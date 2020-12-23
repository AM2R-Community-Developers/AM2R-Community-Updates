/// scr_mouse_gui_x(mouse_x)
if (os_type == os_windows || os_type == os_linux || os_type == os_macosx) {
    return display_get_gui_width() * argument0 / window_get_width();
} else return display_get_gui_width() * argument0 / display_get_width();
