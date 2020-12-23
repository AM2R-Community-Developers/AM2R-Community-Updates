/// set_fullscreen(enable)
var flag = argument0;
if (os_is_native) {
    window_set_fullscreen(flag);
} else {
    var scale;
    if (flag) {
        scale = floor(min(browser_width / (320 + (106*oControl.widescreen)), browser_height / 240));
    } else scale = global.opscale;
    set_window_scale(scale);
}
