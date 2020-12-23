/// check_keys()
// some duplicate code, but fancy.
ctrl_Left = 0;
ctrl_Right = 0;
ctrl_Up = 0;
ctrl_Down = 0;
ctrl_A = 0;
ctrl_B = 0;
ctrl_X = 0;
ctrl_L = 0;
ctrl_R = 0;
ctrl_Select = 0;
ctrl_Start = 0;
ctrl_L2 = 0;
ctrl_R2 = 0;
ctrl_Exit = 0;
ctrl_Menu1 = 0;
ctrl_Menu2 = 0;
walk_zone = 0;
if ((ctrl_Left == 0) && (ctrl_Right == 0) && (!keyboard_check(global.opkeybtn_right)) && keyboard_check(global.opkeybtn_left)) {
    ctrl_Left = 1;
    global.controltype = 0;
}
if ((ctrl_Left == 0) && (ctrl_Right == 0) && (!keyboard_check(global.opkeybtn_left)) && keyboard_check(global.opkeybtn_right)) {
    ctrl_Right = 1;
    global.controltype = 0;
}
if ((ctrl_Up == 0) && (ctrl_Down == 0) && (!keyboard_check(global.opkeybtn_down)) && keyboard_check(global.opkeybtn_up)) {
    ctrl_Up = 1;
    global.controltype = 0;
}
if ((ctrl_Up == 0) && (ctrl_Down == 0) && (!keyboard_check(global.opkeybtn_up)) && keyboard_check(global.opkeybtn_down)) {
    ctrl_Down = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_a)) {
    ctrl_A = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_b)) {
    ctrl_B = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_x)) {
    ctrl_X = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_l)) {
    ctrl_L = 1;
    global.controltype = 0;
}
if ((global.opaimstyle == true) && keyboard_check(global.opkeybtn_l2)) {
    ctrl_L2 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_r)) {
    ctrl_R = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_r2)) {
    ctrl_R2 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_select)) {
    ctrl_Select = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_start)) {
    ctrl_Start = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_exit)) {
    ctrl_Exit = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_menu1)) {
    ctrl_Menu1 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_menu2)) {
    ctrl_Menu2 = 1;
    global.controltype = 0;
}



/*
if (ctrl_Left == 0 && ctrl_Right == 0 && !keyboard_check(global.opkeybtn_right) && keyboard_check(global.opkeybtn_left)) {
    ctrl_Left = 1;
    global.controltype = 0;
}
if (ctrl_Left == 0 && ctrl_Right == 0 && !keyboard_check(global.opkeybtn_left) && keyboard_check(global.opkeybtn_right)) {
    ctrl_Right = 1;
    global.controltype = 0;
}
if (ctrl_Up == 0 && ctrl_Down == 0 && !keyboard_check(global.opkeybtn_down) && keyboard_check(global.opkeybtn_up)) {
    ctrl_Up = 1;
    global.controltype = 0;
}
if (ctrl_Up == 0 && ctrl_Down == 0 && !keyboard_check(global.opkeybtn_up) && keyboard_check(global.opkeybtn_down)) {
    ctrl_Down = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_a)) {
    ctrl_A = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_b)) {
    ctrl_B = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_x)) {
    ctrl_X = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_l)) {
    ctrl_L = 1;
    global.controltype = 0;
}
if (global.opaimstyle == true && keyboard_check(global.opkeybtn_l2)) {
    ctrl_L2 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_r)) {
    ctrl_R = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_r2)) {
    ctrl_R2 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_select)) {
    ctrl_Select = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_start)) {
    ctrl_Start = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_exit)) {
    ctrl_Exit = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_menu1)) {
    ctrl_Menu1 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_menu2)) {
    ctrl_Menu2 = 1;
    global.controltype = 0;
}
*/



if (gamepad_is_supported()) {
    if (gamepad_is_connected(global.gamepadIndex) && global.opxjoyenable) {
        if (global.opxjoyvib) gamepad_set_vibration(global.gamepadIndex, global.vibL, global.vibR);
        xjoyx = gamepad_axis_value(global.gamepadIndex, gp_axislh);
        xjoyy = gamepad_axis_value(global.gamepadIndex, gp_axislv);
        if (is_walkzone(xjoyx, xjoyy, 1)) walk_zone = 1;
        if (is_past_deadzone(xjoyx, xjoyy, 1)) {
            if ((ctrl_Left == 0) && (ctrl_Right == 0) && (xjoyx < -(global.opxjoydz / 200))) {
                ctrl_Left = -xjoyx;
                global.controltype = 2;
            }
            if ((ctrl_Left == 0) && (ctrl_Right == 0) && (xjoyx > (global.opxjoydz / 200))) {
                ctrl_Right = xjoyx;
                global.controltype = 2;
            }
            if ((ctrl_Up == 0) && (ctrl_Down == 0) && (xjoyy < -(global.opxjoydz / 200))) {
                ctrl_Up = 1;
                global.controltype = 2;
            }
            if ((ctrl_Up == 0) && (ctrl_Down == 0) && (xjoyy > (global.opxjoydz / 200))) {
                ctrl_Down = 1;
                global.controltype = 2;
            }
        }
        if ((ctrl_Left == 0) && (ctrl_Right == false) && gamepad_button_check(global.gamepadIndex, gp_padl)) {
            ctrl_Left = 1;
            global.controltype = 2;
            walk_zone = 0;
        }
        if ((ctrl_Left == 0) && (ctrl_Right == false) && gamepad_button_check(global.gamepadIndex, gp_padr)) {
            ctrl_Right = 1;
            global.controltype = 2;
            walk_zone = 0;
        }
        if ((ctrl_Up == 0) && (ctrl_Down == false) && gamepad_button_check(global.gamepadIndex, gp_padu)) {
            ctrl_Up = 1;
            global.controltype = 2;
            walk_zone = 0;
        }
        if ((ctrl_Up == 0) && (ctrl_Down == false) && gamepad_button_check(global.gamepadIndex, gp_padd)) {
            ctrl_Down = 1;
            global.controltype = 2;
            walk_zone = 0;
        }
        if ((ctrl_A == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_a)) {
            ctrl_A = 1;
            global.controltype = 2;
        }
        if ((ctrl_B == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_b)) {
            ctrl_B = 1;
            global.controltype = 2;
        }
        if ((ctrl_X == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_x)) {
            ctrl_X = 1;
            global.controltype = 2;
        }
        if ((ctrl_L == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_l)) {
            ctrl_L = 1;
            global.controltype = 2;
        }
        if ((global.opaimstyle == 1) && (ctrl_L2 == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_l2)) {
            ctrl_L2 = 1;
            global.controltype = 2;
        }
        if ((ctrl_R == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_r)) {
            ctrl_R = 1;
            global.controltype = 2;
        }
        if ((ctrl_R2 == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_r2)) {
            ctrl_R2 = 1;
            global.controltype = 2;
        }
        if ((ctrl_Select == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_sel)) {
            ctrl_Select = 1;
            global.controltype = 2;
        }
        if ((ctrl_Start == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_str)) {
            ctrl_Start = 1;
            global.controltype = 2;
        }
        if ((ctrl_Exit == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_exit)) {
            ctrl_Exit = 1;
            global.controltype = 2;
        }
        if ((ctrl_Menu1 == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_menu1)) {
            ctrl_Menu1 = 1;
            global.controltype = 2;
        }
        if ((ctrl_Menu2 == false) && gamepad_button_check(global.gamepadIndex, global.opxjoybtn_menu2)) {
            ctrl_Menu2 = 1;
            global.controltype = 2;
        }
    } // if (gamepad_is_connected(0) && global.opxjoyenable)
} // if (gamepad_is_supported())
// Android thingies
if (global.joydetected && global.openablejoy && !gamepad_is_connected(global.gamepadIndex)) {
    joyx = check_axis(global.opjoybtn_xax);
    joyy = check_axis(global.opjoybtn_yax);
    if (is_walkzone(joyx, joyy, 0)) walk_zone = 1;
    if (is_past_deadzone(joyx, joyy, 0)) {
        if ((ctrl_Left == 0) && (ctrl_Right == 0) && (joyx < 0)) {
            ctrl_Left = -joyx;
            global.controltype = 1;
        }
        if ((ctrl_Left == 0) && (ctrl_Right == 0) && (joyx > 0)) {
            ctrl_Right = joyx;
            global.controltype = 1;
        }
        if ((ctrl_Up == 0) && (ctrl_Down == 0) && (joyy < 0)) {
            ctrl_Up = 1;
            global.controltype = 1;
        }
        if ((ctrl_Up == 0) && (ctrl_Down == 0) && (joyy > 0)) {
            ctrl_Down = 1;
            global.controltype = 1;
        }
    }
    if(global.dpad_rebind) {
        if ((ctrl_Left == 0) && (ctrl_Right == false) && joystick_check_button(global.opjoyid, global.opjoybtn_padl)) {
            ctrl_Left = 1;
            global.controltype = 1;
            walk_zone = 0;
        }
        if ((ctrl_Left == 0) && (ctrl_Right == false) && joystick_check_button(global.opjoyid, global.opjoybtn_padr)) {
            ctrl_Right = 1;
            global.controltype = 1;
            walk_zone = 0;
        }
        if ((ctrl_Up == 0) && (ctrl_Down == false) && joystick_check_button(global.opjoyid, global.opjoybtn_padu)) {
            ctrl_Up = 1;
            global.controltype = 1;
            walk_zone = 0;
        }
        if ((ctrl_Up == 0) && (ctrl_Down == false) && joystick_check_button(global.opjoyid, global.opjoybtn_padd)) {
            ctrl_Down = 1;
            global.controltype = 1;
            walk_zone = 0;
        }
    }
    if ((ctrl_A == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_a)) {
        ctrl_A = 1;
        global.controltype = 1;
    }
    if ((ctrl_B == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_b)) {
        ctrl_B = 1;
        global.controltype = 1;
    }
    if ((ctrl_X == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_x)) {
        ctrl_X = 1;
        global.controltype = 1;
    }
    if ((ctrl_L == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_l)) {
        ctrl_L = 1;
        global.controltype = 1;
    }
    if ((global.opaimstyle == 1) && (ctrl_L2 == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_l2)) {
        ctrl_L2 = 1;
        global.controltype = 1;
    }
    if ((ctrl_R == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_r)) {
        ctrl_R = 1;
        global.controltype = 1;
    }
    if ((ctrl_R2 == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_r2)) {
        ctrl_R2 = 1;
        global.controltype = 1;
    }
    if ((ctrl_Select == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_sel)) {
        ctrl_Select = 1;
        global.controltype = 1;
    }
    if ((ctrl_Start == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_str)) {
        ctrl_Start = 1;
        global.controltype = 1;
    }
    if ((ctrl_Exit == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_exit)) {
        ctrl_Exit = 1;
        global.controltype = 1;
    }
    if ((ctrl_Menu1 == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_menu1)) {
        ctrl_Menu1 = 1;
        global.controltype = 1;
    }
    if ((ctrl_Menu2 == 0) && joystick_check_button(global.opjoyid, global.opjoybtn_menu2)) {
        ctrl_Menu2 = 1;
        global.controltype = 1;
    }
} // if (global.joydetected && global.openablejoy && !gamepad_is_connected(0))
