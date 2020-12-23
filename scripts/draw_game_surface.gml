/// draw_game_surface(x, y, scale)
draw_surface_ext(application_surface, argument0, argument1, argument2, argument2, 0, c_white, 1);
if (global.opapril == 1) {
    draw_set_color(c_black);
    draw_set_alpha(1);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_blend_mode(bm_add);
    draw_surface_ext(application_surface, argument0 - argument2 * 2, argument1, argument2, argument2, 0, c_red, 1);
    draw_surface_ext(application_surface, argument0 + argument2 * 2, argument1, argument2, argument2, 0, c_aqua, 1);
    draw_set_blend_mode(bm_normal);
}
