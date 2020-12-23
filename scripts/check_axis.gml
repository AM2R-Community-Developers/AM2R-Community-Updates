/// check_axis(axis_id)
// Could have been much shorter.
if (argument0 == 0) {
    if (joystick_xpos(global.opjoyid) < -(global.opdeadzone / 100) / 2) return joystick_xpos(global.opjoyid);
    if (joystick_xpos(global.opjoyid) > global.opdeadzone / 100 / 2) return joystick_xpos(global.opjoyid);
}
if (argument0 == 1) {
    if (joystick_ypos(global.opjoyid) < -(global.opdeadzone / 100) / 2) return joystick_ypos(global.opjoyid);
    if (joystick_ypos(global.opjoyid) > global.opdeadzone / 100 / 2) return joystick_ypos(global.opjoyid);
}
if (argument0 == 2) {
    if (joystick_zpos(global.opjoyid) < -(global.opdeadzone / 100) / 2) return joystick_zpos(global.opjoyid);
    if (joystick_zpos(global.opjoyid) > global.opdeadzone / 100 / 2) return joystick_zpos(global.opjoyid);
}
if (argument0 == 3) {
    if (joystick_rpos(global.opjoyid) < -(global.opdeadzone / 100) / 2) return joystick_rpos(global.opjoyid);
    if (joystick_rpos(global.opjoyid) > global.opdeadzone / 100 / 2) return joystick_rpos(global.opjoyid);
}
if (argument0 == 4) {
    if (joystick_upos(global.opjoyid) < -(global.opdeadzone / 100) / 2) return joystick_upos(global.opjoyid);
    if (joystick_upos(global.opjoyid) > global.opdeadzone / 100 / 2) return joystick_upos(global.opjoyid);
}
if (argument0 == 5) {
    if (joystick_vpos(global.opjoyid) < -(global.opdeadzone / 100) / 2) return joystick_vpos(global.opjoyid);
    if (joystick_vpos(global.opjoyid) > global.opdeadzone / 100 / 2) return joystick_vpos(global.opjoyid);
}
if (argument0 == 6) {
    if (joystick_pov(global.opjoyid) == 225 || joystick_pov(global.opjoyid) == 270 || joystick_pov(global.opjoyid) == 315) return -1;
    if (joystick_pov(global.opjoyid) == 45 || joystick_pov(global.opjoyid) == 90 || joystick_pov(global.opjoyid) == 135) return 1;
}
if (argument0 == 7) {
    if (joystick_pov(global.opjoyid) == 0 || joystick_pov(global.opjoyid) == 45 || joystick_pov(global.opjoyid) == 315) return -1;
    if (joystick_pov(global.opjoyid) == 135 || joystick_pov(global.opjoyid) == 180 || joystick_pov(global.opjoyid) == 225) return 1;
}
return 0;
