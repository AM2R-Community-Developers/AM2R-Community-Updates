/// get_button_sprite(button_name)
if(os_type == os_android || os_type == os_linux) {
    // No compatibility, joy detected
    if (global.joydetected == 1 && global.compatibilitymode == 0) switch (argument0) {
        case "Fire": return get_xjoybtnsprite(global.opxjoybtn_b); break;
        case "Jump": return get_xjoybtnsprite(global.opxjoybtn_a); break;
        case "Missile": return get_xjoybtnsprite(global.opxjoybtn_r); break;
        case "Walk": return get_xjoybtnsprite(global.opxjoybtn_r2); break;
        case "Aim": return get_xjoybtnsprite(global.opxjoybtn_l); break;
        case "Aim2": return get_xjoybtnsprite(global.opxjoybtn_l2); break;
        case "Select": return get_xjoybtnsprite(global.opxjoybtn_sel); break;
        case "Start": return get_xjoybtnsprite(global.opxjoybtn_str); break;
        case "Morph": return get_xjoybtnsprite(global.opxjoybtn_x); break;
        case "Menu1": return get_xjoybtnsprite(global.opxjoybtn_menu1); break;
        case "Menu2": return get_xjoybtnsprite(global.opxjoybtn_menu2); break;
        case "DPad": return sDPadBtn; break;
        case "Down": return sBtnDown; break;
    }
    // No joy detected, so display touch
    if ((global.joydetected == 0) && (os_type == os_android)) switch (argument0) {
        case "Fire": return sTouchBtnFire; break;
        case "Jump": return sTouchBtnJump; break;
        case "Missile": return sTouchBtnMissile; break;
        case "Walk": return sXJoyBtnLth; break;
        case "Aim": return sTouchBtnAim break;
        case "Aim2": return sTouchBtnAim2 break;
        case "Select": return sTouchBtnMissile; break;
        case "Start": return sTouchBtnStart break;
        case "Morph": return sTouchBtnMorph; break;
        case "Menu1": return sTouchBtnJump; break;
        case "Menu2": return sTouchBtnFire; break;
        case "DPad": return sDPadBtn; break;
        case "Down": return sBtnDown; break;
    } // Joy detected, with compatibility
    else if (global.joydetected == 1) switch (argument0) {
        case "Fire": return get_joybtnsprite(global.opjoybtn_b); break;
        case "Jump": return get_joybtnsprite(global.opjoybtn_a); break;
        case "Missile": return get_joybtnsprite(global.opjoybtn_r); break;
        case "Walk": return get_joybtnsprite(global.opjoybtn_r2); break;
        case "Aim": return get_joybtnsprite(global.opjoybtn_l); break;
        case "Aim2": return get_joybtnsprite(global.opjoybtn_l2); break;
        case "Select": return get_joybtnsprite(global.opjoybtn_sel); break;
        case "Start": return get_joybtnsprite(global.opjoybtn_str); break;
        case "Morph": return get_joybtnsprite(global.opjoybtn_x); break;
        case "Menu1": return get_joybtnsprite(global.opjoybtn_menu1); break;
        case "Menu2": return get_joybtnsprite(global.opjoybtn_menu2); break;
        case "DPad": return sDPadBtn; break;
        case "Down": return sBtnDown; break;
    }
}
if (global.controltype == 0) switch (argument0) {
    case "DPad": return sKArrows; break;
    default: return -4; break;
}
if (global.controltype == 1) switch (argument0) {
    case "Fire": return get_joybtnsprite(global.opjoybtn_b); break;
    case "Jump": return get_joybtnsprite(global.opjoybtn_a); break;
    case "Missile": return get_joybtnsprite(global.opjoybtn_r); break;
    case "Walk": return get_joybtnsprite(global.opjoybtn_r2); break;
    case "Aim": return get_joybtnsprite(global.opjoybtn_l); break;
    case "Aim2": return get_joybtnsprite(global.opjoybtn_l2); break;
    case "Select": return get_joybtnsprite(global.opjoybtn_sel); break;
    case "Start": return get_joybtnsprite(global.opjoybtn_str); break;
    case "Morph": return get_joybtnsprite(global.opjoybtn_x); break;
    case "Menu1": return get_joybtnsprite(global.opjoybtn_menu1); break;
    case "Menu2": return get_joybtnsprite(global.opjoybtn_menu2); break;
    case "DPad": return sDPadBtn; break;
    case "Down": return sBtnDown; break;
}
if (global.controltype == 2) switch (argument0) {
    case "Fire": return get_xjoybtnsprite(global.opxjoybtn_b); break;
    case "Jump": return get_xjoybtnsprite(global.opxjoybtn_a); break;
    case "Missile": return get_xjoybtnsprite(global.opxjoybtn_r); break;
    case "Walk": return get_xjoybtnsprite(global.opxjoybtn_r2); break;
    case "Aim": return get_xjoybtnsprite(global.opxjoybtn_l); break;
    case "Aim2": return get_xjoybtnsprite(global.opxjoybtn_l2); break;
    case "Select": return get_xjoybtnsprite(global.opxjoybtn_sel); break;
    case "Start": return get_xjoybtnsprite(global.opxjoybtn_str); break;
    case "Morph": return get_xjoybtnsprite(global.opxjoybtn_x); break;
    case "Menu1": return get_xjoybtnsprite(global.opxjoybtn_menu1); break;
    case "Menu2": return get_xjoybtnsprite(global.opxjoybtn_menu2); break;
    case "DPad": return sDPadBtn; break;
    case "Down": return sBtnDown; break;
}
if (argument0 == "") return noone; // (that's not how it works)
