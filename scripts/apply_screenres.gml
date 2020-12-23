/// apply_screenres()
if (os_is_native) {
    window_set_fullscreen(global.opfullscreen);
    display_reset(0, global.opvsync);
    if (global.opfullscreen == 0) set_window_scale(global.opscale);
} else set_fullscreen(global.opfullscreen);
