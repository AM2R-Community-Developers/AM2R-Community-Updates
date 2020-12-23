/// bluetooth_keys()
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
    global.joydetected = 0;
}
if ((ctrl_Left == 0) && (ctrl_Right == 0) && (!keyboard_check(global.opkeybtn_left)) && keyboard_check(global.opkeybtn_right)) {
    ctrl_Right = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if ((ctrl_Up == 0) && (ctrl_Down == 0) && (!keyboard_check(global.opkeybtn_down)) && keyboard_check(global.opkeybtn_up)) {
    ctrl_Up = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if ((ctrl_Up == 0) && (ctrl_Down == 0) && (!keyboard_check(global.opkeybtn_up)) && keyboard_check(global.opkeybtn_down)) {
    ctrl_Down = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_a)) {
    ctrl_A = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_b)) {
    ctrl_B = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_x)) {
    ctrl_X = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_l)) {
    ctrl_L = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if ((global.opaimstyle == true) && keyboard_check(global.opkeybtn_l2)) {
    ctrl_L2 = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_r)) {
    ctrl_R = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_r2)) {
    ctrl_R2 = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_select)) {
    ctrl_Select = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_start)) {
    ctrl_Start = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_exit)) {
    ctrl_Exit = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_menu1)) {
    ctrl_Menu1 = 1;
    global.controltype = 0;
    global.joydetected = 0;
}
if (keyboard_check(global.opkeybtn_menu2)) {
    ctrl_Menu2 = 1;
    global.controltype = 0;
    global.joydetected = 0;
}


if (gamepad_is_supported() && !global.compatibilitymode) {
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
}

/*
// Virtual keycodes
if (gamepad_is_supported()) {
    if (gamepad_is_connected(global.opjoyid) && global.joydetected && !global.compatibilitymode) {    
        xjoyx = gamepad_axis_value(global.opjoyid, gp_axislh);
        xjoyy = gamepad_axis_value(global.opjoyid, gp_axislv);
        if (is_past_deadzone(xjoyx, xjoyy, 1)) {
            if (is_walkzone(xjoyx, xjoyy, 2)) walk_zone = 1;
            if (ctrl_Left == 0 && ctrl_Right == 0 && xjoyx < -(global.opxjoydz / 200)) {
                ctrl_Left = -xjoyx;
                global.controltype = 2;
            }
            if (ctrl_Left == 0 && ctrl_Right == 0 && xjoyx > global.opxjoydz / 200) {
                ctrl_Right = xjoyx;
                global.controltype = 2;
            }
            if (ctrl_Up == 0 && ctrl_Down == 0 && xjoyy < -(global.opxjoydz / 200)) {
                ctrl_Up = 1;
                global.controltype = 2;
            }
            if (ctrl_Up == 0 && ctrl_Down == 0 && xjoyy > global.opxjoydz / 200) {
                ctrl_Down = 1;
                global.controltype = 2;
            }
        }        
        if (ctrl_Left == 0 && ctrl_Right == false && gamepad_button_check(global.opjoyid, gp_padl) ) {
            ctrl_Left = 1;
            global.controltype = 2;
            walk_zone = 0;
        }
        if (ctrl_Left == 0 && ctrl_Right == false && gamepad_button_check(global.opjoyid, gp_padr)) {
            ctrl_Right = 1;
            global.controltype = 2;
            walk_zone = 0;
        }
        if (ctrl_Up == 0 && ctrl_Down == false && gamepad_button_check(global.opjoyid, gp_padu)) {
            ctrl_Up = 1;
            global.controltype = 2;
            walk_zone = 0;
        }
        if (ctrl_Up == 0 && ctrl_Down == false && gamepad_button_check(global.opjoyid, gp_padd)) {
            ctrl_Down = 1;
            global.controltype = 2;
            walk_zone = 0;
        }
        if (ctrl_A == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_a) || (global.opxjoybtn_a == gp_select && keyboard_check(vk_backspace))) {
            ctrl_A = 1;
            global.controltype = 2;
        }
        if (ctrl_B == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_b) || (global.opxjoybtn_b == gp_select && keyboard_check(vk_backspace))) {
            ctrl_B = 1;
            global.controltype = 2;
        }
        if (ctrl_X == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_x) || (global.opxjoybtn_x == gp_select && keyboard_check(vk_backspace))) {
            ctrl_X = 1;
            global.controltype = 2;
        }
        if (ctrl_L == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_l) || (global.opxjoybtn_l == gp_select && keyboard_check(vk_backspace))) {
            ctrl_L = 1;
            global.controltype = 2;
        }
        if (global.opaimstyle == 1 && ctrl_L2 == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_l2) || (global.opxjoybtn_l2 == gp_select && keyboard_check(vk_backspace))) {
            ctrl_L2 = 1;
            global.controltype = 2;
        }
        if (ctrl_R == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_r) || (global.opxjoybtn_r == gp_select && keyboard_check(vk_backspace))) {
            ctrl_R = 1;
            global.controltype = 2;
        }
        if (ctrl_R2 == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_r2) || (global.opxjoybtn_r2 == gp_select && keyboard_check(vk_backspace))) {
            ctrl_R2 = 1;
            global.controltype = 2;
        }
        if (ctrl_Select == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_sel) || (global.opxjoybtn_sel == gp_select && keyboard_check(vk_backspace))) {
            ctrl_Select = 1;
            global.controltype = 2;
        }
        if (ctrl_Start == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_str) || (global.opxjoybtn_str == gp_select && keyboard_check(vk_backspace))) {
            ctrl_Start = 1;
            global.controltype = 2;
        }
        if (ctrl_Exit == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_exit) || (global.opxjoybtn_exit == gp_select && keyboard_check(vk_backspace))) {
            ctrl_Exit = 1;
            global.controltype = 2;
        }
        if (ctrl_Menu1 == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_menu1) || (global.opxjoybtn_menu1 == gp_select && keyboard_check(vk_backspace))) {
            ctrl_Menu1 = 1;
            global.controltype = 2;
        }
        if (ctrl_Menu2 == false && gamepad_button_check(global.opjoyid, global.opxjoybtn_menu2) || (global.opxjoybtn_menu2 == gp_select && keyboard_check(vk_backspace))) {
            ctrl_Menu2 = 1;
            global.controltype = 2;
        }
    } // if (gamepad_is_connected(global.opjoyid) && global.joydetected && !global.compatibilitymode)
} // if (gamepad_is_supported())
*/
// Numbered scancodes
if (gamepad_is_supported()) {
    if (gamepad_is_connected(global.opjoyid) && global.joydetected && global.compatibilitymode) {
    
        /*for (var g = 0; g <= gamepad_axis_count(global.opjoyid); g ++) {
            show_debug_message(string(g) + ": " + string(gamepad_axis_value(global.opjoyid, g)));
        }*/
            
        xjoyx = gamepad_axis_value(global.opjoyid, global.opjoybtn_xax);
        xjoyy = gamepad_axis_value(global.opjoyid, global.opjoybtn_yax);
       
        if (is_past_deadzone(xjoyx, xjoyy, 0)) {
            if (is_walkzone(xjoyx, xjoyy, 0)) walk_zone = 1;
            if (ctrl_Left == 0 && ctrl_Right == 0 && xjoyx < -(global.opxjoydz / 200)) {
                ctrl_Left = -xjoyx;
                global.controltype = 1;
            }
            if (ctrl_Left == 0 && ctrl_Right == 0 && xjoyx > global.opxjoydz / 200) {
                ctrl_Right = xjoyx;
                global.controltype = 1;
            }
            if (ctrl_Up == 0 && ctrl_Down == 0 && xjoyy < -(global.opxjoydz / 200)) {
                ctrl_Up = 1;
                global.controltype = 1;
            }
            if (ctrl_Up == 0 && ctrl_Down == 0 && xjoyy > global.opxjoydz / 200) {
                ctrl_Down = 1;
                global.controltype = 1;
            }
        }
        if (ctrl_Left == 0 && ctrl_Right == false && gamepad_button_check(global.opjoyid, global.opjoybtn_padl-1)) {
            ctrl_Left = 1;
            global.controltype = 1;
            walk_zone = 0;
        }
        if (ctrl_Left == 0 && ctrl_Right == false && gamepad_button_check(global.opjoyid, global.opjoybtn_padr-1)) {
            ctrl_Right = 1;
            global.controltype = 1;
            walk_zone = 0;
        }
        if (ctrl_Up == 0 && ctrl_Down == false && gamepad_button_check(global.opjoyid, global.opjoybtn_padu-1)) {
            ctrl_Up = 1;
            global.controltype = 1;
            walk_zone = 0;
        }
        if (ctrl_Up == 0 && ctrl_Down == false && gamepad_button_check(global.opjoyid, global.opjoybtn_padd-1)) {
            ctrl_Down = 1;
            global.controltype = 1;
            walk_zone = 0;
        }
        if (ctrl_A == false && gamepad_button_check(global.opjoyid, global.opjoybtn_a-1)) {
            ctrl_A = 1;
            global.controltype = 1;
        }
        if (ctrl_B == false && gamepad_button_check(global.opjoyid, global.opjoybtn_b-1)) {
            ctrl_B = 1;
            global.controltype = 1;
        }
        if (ctrl_X == false && gamepad_button_check(global.opjoyid, global.opjoybtn_x-1)) {
            ctrl_X = 1;
            global.controltype = 1;
        }
        if (ctrl_L == false && gamepad_button_check(global.opjoyid, global.opjoybtn_l-1)) {
            ctrl_L = 1;
            global.controltype = 1;
        }
        if (global.opaimstyle == 1 && ctrl_L2 == false && gamepad_button_check(global.opjoyid, global.opjoybtn_l2-1)) {
            ctrl_L2 = 1;
            global.controltype = 1;
        }
        if (ctrl_R == false && gamepad_button_check(global.opjoyid, global.opjoybtn_r-1)) {
            ctrl_R = 1;
            global.controltype = 1;
        }
        if (ctrl_R2 == false && gamepad_button_check(global.opjoyid, global.opjoybtn_r2-1)) {
            ctrl_R2 = 1;
            global.controltype = 1;
        }
        if (ctrl_Select == false && gamepad_button_check(global.opjoyid, global.opjoybtn_sel-1)) {
            ctrl_Select = 1;
            global.controltype = 1;
        }
        if (ctrl_Start == false && gamepad_button_check(global.opjoyid, global.opjoybtn_str-1)) {
            ctrl_Start = 1;
            global.controltype = 1;
        }
        if (ctrl_Exit == false && gamepad_button_check(global.opjoyid, global.opjoybtn_exit-1)) {
            ctrl_Exit = 1;
            global.controltype = 1;
        }
        if (ctrl_Menu1 == false && gamepad_button_check(global.opjoyid, global.opjoybtn_menu1-1)) {
            ctrl_Menu1 = 1;
            global.controltype = 1;
        }
        if (ctrl_Menu2 == false && gamepad_button_check(global.opjoyid, global.opjoybtn_menu2-1)) {
            ctrl_Menu2 = 1;
            global.controltype = 1;
        }
    } // if (gamepad_is_connected(global.opjoyid) && global.joydetected && global.compatibilitymode)
} // if (gamepad_is_supported())
