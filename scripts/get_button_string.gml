/// get_button_string(button_name)
switch (argument0) {
    case "Fire": return "[" + get_keyname(global.opkeybtn_b) + "]"; break;
    case "Jump": return "[" + get_keyname(global.opkeybtn_a) + "]"; break;
    case "Missile": return "[" + get_keyname(global.opkeybtn_r) + "]"; break;
    case "Walk": return "[" + get_keyname(global.opkeybtn_r2) + "]"; break;
    case "Aim": return "[" + get_keyname(global.opkeybtn_l) + "]"; break;
    case "Aim2": return "[" + get_keyname(global.opkeybtn_l2) + "]"; break;
    case "Select": return "[" + get_keyname(global.opkeybtn_select) + "]"; break;
    case "Start": return "[" + get_keyname(global.opkeybtn_start) + "]"; break;
    case "Morph": return "[" + get_keyname(global.opkeybtn_x) + "]"; break;
    case "Down": return "[" + get_keyname(global.opkeybtn_down) + "]"; break;
    case "Menu1": return "[" + get_keyname(global.opkeybtn_menu1) + "]"; break;
    case "Menu2": return "[" + get_keyname(global.opkeybtn_menu2) + "]"; break;
}
if (argument0 == "") return "";
