/// draw_sprite_pixelated(sprite, subimg, x, y, xscale, yscale, rot, color, alpha, xpixelscale, ypixelscale, surfsize);

var xx = argument2,
    yy = argument3,
    pixel_scale_x = argument9,
    pixel_scale_y = argument10,
    surf = -1;

if (!surface_exists(surf)) {
    surf = surface_create(argument11, argument11);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    draw_sprite_ext(argument0, argument1, surface_get_width(surf)/2, surface_get_height(surf)/2, (1/pixel_scale_x)*argument4, (1/pixel_scale_y)*argument5, 0, argument7, argument8);
    surface_reset_target();
}

var surfx = xx - (lengthdir_x((surface_get_width(surf)/2*pixel_scale_x), argument6) - lengthdir_y((surface_get_height(surf)/2*pixel_scale_y), argument6)),
    surfy = yy - (lengthdir_y((surface_get_width(surf)/2*pixel_scale_x), argument6) + lengthdir_x((surface_get_height(surf)/2*pixel_scale_y), argument6));

draw_surface_ext(surf, surfx, surfy, pixel_scale_x, pixel_scale_y, argument6, c_white, 1);

surface_free(surf);
