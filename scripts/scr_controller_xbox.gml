/// get_xjoybtnname(gamepad_button)
if (argument0 == gp_face1) return "A";
if (argument0 == gp_face2) return "B";
if (argument0 == gp_face3) return "X";
if (argument0 == gp_face4) return "Y";
if (argument0 == gp_shoulderl) return get_text("Buttons", "LB"); //"LB";
if (argument0 == gp_shoulderr) return get_text("Buttons", "RB"); //"RB";
if (argument0 == gp_shoulderlb) return get_text("Buttons", "LT"); //"LT";
if (argument0 == gp_shoulderrb) return get_text("Buttons", "RT"); //"RT";
if (argument0 == gp_stickl) return get_text("Buttons", "LStick"); //"LStick";
if (argument0 == gp_stickr) return get_text("Buttons", "RStick"); //"RStick";
if (argument0 == gp_start) return get_text("Buttons", "Start"); //"Start";
if (argument0 == gp_select) return get_text("Buttons", "Back"); //"Back";
return "";
