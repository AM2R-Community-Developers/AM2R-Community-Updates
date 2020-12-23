/// remap_duplicate_xjoybtnmenu(index)
if (global.opxjoybtn_menu1 == argument0) {
    global.opxjoybtn_menu1 = get_control_xjoybtn(global.curropt);
} else if (global.opxjoybtn_menu2 == argument0) {
    global.opxjoybtn_menu2 = get_control_xjoybtn(global.curropt);
}
