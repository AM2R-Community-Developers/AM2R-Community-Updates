/// remap_duplicate_joybtnmenu(index)
if (global.opjoybtn_menu1 == argument0) {
    global.opjoybtn_menu1 = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_menu2 == argument0) {
    global.opjoybtn_menu2 = get_control_joyaxisbtn(global.curropt);
}
