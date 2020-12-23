/// scr_mouse_gui_y(mouse_y)
if (os_type == os_windows || os_type == os_linux || os_type == os_macosx) {
    return display_get_gui_height() * argument0 / window_get_height();
} else return display_get_gui_height() * argument0 / display_get_height();
