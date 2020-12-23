/// draw_txt_2buttons(x, y, text, align, button1, button2, alpha)
xoff = 0;
yoff = 0;
sep = 1;
p_text1 = string_split(argument2, 0, "|");
p_text2 = string_split(argument2, 1, "|");
p_text3 = string_split(argument2, 2, "|");
draw_set_font(fontMenuSmall2);
if (p_text1 != "") {
    w1 = string_width(p_text1);
} else w1 = 0;
w2 = string_width(p_text2);
w3 = string_width(p_text3);
b1 = sprite_get_width(get_button_sprite(argument4));
b2 = sprite_get_width(get_button_sprite(argument5));
draw_set_alpha(argument6);
if ((global.controltype > 0) || (b1 > 0)) {
    draw_set_halign(fa_left);
    if (argument3 == 0) xoff -= round((w1 + w2 + w3 + b1 + b2 + sep * 4) / 2);
    if (argument3 == 2) xoff -= round(w1 + w2 + w3 + b1 + b2 + sep * 4);
    draw_set_color(make_colour_rgb(224, 248, 208)); // og c_white
    draw_text_shadow_log(argument0 + xoff, argument1 + yoff, p_text1);
    draw_sprite_ext(get_button_sprite(argument4), -1, argument0 + xoff + w1, argument1 + yoff + 6, 1, 1, 0, -1, argument6);
    draw_text_shadow_log(argument0 + xoff + w1 + b1 + sep, argument1 + yoff, p_text2);
    draw_sprite_ext(get_button_sprite(argument5), -1, argument0 + xoff + w1 + b1 + w2 + sep, argument1 + yoff + 6, 1, 1, 0, -1, argument6);
    draw_text_shadow_log(argument0 + xoff + w1 + b1 + w2 + b2 + sep * 2, argument1 + yoff, p_text3);
} else {
    if (argument3 == 0) draw_set_halign(fa_center);
    if (argument3 == 2) draw_set_halign(fa_right);
    draw_set_color(make_colour_rgb(224, 248, 208)); // og c_white
    draw_text_shadow_log(argument0 + xoff, argument1 + yoff, p_text1 + get_button_string(argument4) + p_text2 + get_button_string(argument5) + p_text3);
}
draw_set_alpha(1);
draw_set_halign(fa_left);
