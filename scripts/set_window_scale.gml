/// set_window_scale(scale)
var scale = max(1, argument0);
window_set_size(round((320 + (106 * global.widescreen_enabled)) * scale), round(240 * scale));
// yes this hurts but it's widescreen proper, so sue me
if (os_is_browser) window_center();
