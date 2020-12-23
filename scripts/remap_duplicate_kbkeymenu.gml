/// remap_duplicate_kbkeymenu(key)
if (global.opkeybtn_menu1 == argument0) {
    global.opkeybtn_menu1 = get_control_keycode(global.curropt);
} else if (global.opkeybtn_menu2 == argument0) {
    global.opkeybtn_menu2 = get_control_keycode(global.curropt);
}
