/// remap_duplicate_joyaxis()
if (global.opjoybtn_xax == argument0) {
    global.opjoybtn_xax = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_yax == argument0) {
    global.opjoybtn_yax = get_control_joyaxisbtn(global.curropt);
}
