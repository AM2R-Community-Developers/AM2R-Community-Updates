/// get_xjoybtnname(gamepad_button)
if (argument0 == gp_face1) return get_text("Buttons", "Cross");
if (argument0 == gp_face2) return get_text("Buttons", "Circle");
if (argument0 == gp_face3) return get_text("Buttons", "Square");
if (argument0 == gp_face4) return get_text("Buttons", "Triangle");
if (argument0 == gp_shoulderl) return get_text("Buttons", "L1"); //"LB";
if (argument0 == gp_shoulderr) return get_text("Buttons", "R1"); //"RB";
if (argument0 == gp_shoulderlb) return get_text("Buttons", "L2"); //"LT";
if (argument0 == gp_shoulderrb) return get_text("Buttons", "R2"); //"RT";
if (argument0 == gp_stickl) return get_text("Buttons", "LStick"); //"LStick";
if (argument0 == gp_stickr) return get_text("Buttons", "RStick"); //"RStick";
if (argument0 == gp_start) return get_text("Buttons", "Start"); //"Start";
if (argument0 == gp_select) return get_text("Buttons", "Select"); //"Back";
return "";
