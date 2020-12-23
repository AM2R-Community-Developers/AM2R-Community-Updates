/// draw_sprite_wave_ext(sprite, image, posx, posy, axis, wavelength, amplitude, phase, xscale, yscale, blend, alpha)
var sprite = argument0;
var image = argument1;
var posx = argument2;
var posy = argument3;
var axis = argument4;
var wavelength = argument5;
var amplitude = argument6;
var phase = argument7;
var xscale = argument8;
var yscale = argument9;
var blend = argument10;
var alpha = argument11;
var width = sprite_get_width(sprite);
var height = sprite_get_height(sprite);
var xoff = sprite_get_xoffset(sprite);
var yoff = sprite_get_yoffset(sprite);
var size, i, shift, sx, sy;
if (axis) {
    size = height;
} else size = width;
for (i = 0; i < size; i += 1) {
    shift = amplitude * sin((pi * 2) * (i / wavelength + phase));
    if (axis) {
        sx = xscale * (shift - xoff) + posx;
        sy = yscale * (i - yoff) + posy;
        draw_sprite_part_ext(sprite, image, 0, i, width, 1, sx, sy, xscale, yscale, blend, alpha);
    } else {
        sx = xscale * (i - xoff) + posx;
        sy = yscale * (shift - yoff) + posy;
        draw_sprite_part_ext(sprite, image, i, 0, 1, height, sx, sy, xscale, yscale, blend, alpha);
    }
}
