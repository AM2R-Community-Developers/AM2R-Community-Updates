/// choose_axis()

if (joystick_axes(global.opjoyid) >= 2) {
    if (joystick_xpos(global.opjoyid) < -global.opdeadzone / 100 || joystick_xpos(global.opjoyid) > global.opdeadzone / 100) return 0;
    if (joystick_ypos(global.opjoyid) < -global.opdeadzone / 100 || joystick_ypos(global.opjoyid) > global.opdeadzone / 100) return 1;
}
if (joystick_axes(global.opjoyid) >= 4) {
    if (joystick_zpos(global.opjoyid) < -global.opdeadzone / 100 || joystick_zpos(global.opjoyid) > global.opdeadzone / 100) return 2;
    if (joystick_rpos(global.opjoyid) < -global.opdeadzone / 100 || joystick_rpos(global.opjoyid) > global.opdeadzone / 100) return 3;
}
if (joystick_axes(global.opjoyid) >= 6) {
    if (joystick_upos(global.opjoyid) < -global.opdeadzone / 100 || joystick_upos(global.opjoyid) > global.opdeadzone / 100) return 4;
    if (joystick_vpos(global.opjoyid) < -global.opdeadzone / 100 || joystick_vpos(global.opjoyid) > global.opdeadzone / 100) return 5;
}
if (joystick_has_pov(global.opjoyid) && joystick_pov(global.opjoyid) != -1) return 6;
return -1;
