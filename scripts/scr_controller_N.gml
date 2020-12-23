/// get_xjoybtnname(gamepad_button)
if (argument0 == gp_face1) return "B";
if (argument0 == gp_face2) return "A";
if (argument0 == gp_face3) return "Y";
if (argument0 == gp_face4) return "X";
if (argument0 == gp_shoulderl) return get_text("Buttons", "LeftShoulder"); //"LB";
if (argument0 == gp_shoulderr) return get_text("Buttons", "RightShoulder"); //"RB";
if (argument0 == gp_shoulderlb) return get_text("Buttons", "ZL"); //"LT";
if (argument0 == gp_shoulderrb) return get_text("Buttons", "ZR"); //"RT";
if (argument0 == gp_stickl) return get_text("Buttons", "LStick"); //"LStick";
if (argument0 == gp_stickr) return get_text("Buttons", "RStick"); //"RStick";
if (argument0 == gp_start) return get_text("Buttons", "Start"); //"Start";
if (argument0 == gp_select) return get_text("Buttons", "Select"); //"Back";
return "";
