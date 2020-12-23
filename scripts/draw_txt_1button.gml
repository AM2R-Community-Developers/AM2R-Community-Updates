/// draw_txt_1button(x, y, text, align, button, alpha)
xoff = 0;
yoff = 0;
sep = 1;
if (string_count("|", argument2) > 0) {
    p_text1 = string_split(argument2, 0, "|");
    p_text2 = string_split(argument2, 1, "|");
    draw_set_font(fontMenuSmall2);
    if (p_text1 != "") {
        w1 = string_width(p_text1);
    } else w1 = 0;
    w2 = string_width(p_text2);
    b1 = sprite_get_width(get_button_sprite(argument4));
    draw_set_alpha(argument5);
    if ((floor(global.controltype) > 0) || (floor(b1) > 0) || (os_type == os_android)) {
        draw_set_halign(fa_left);
        if (argument3 == 0) xoff -= round((w1 + w2 + b1 + sep * 2) / 2);
        if (argument3 == 2) xoff -= round(w1 + w2 + b1 + sep * 2);
        draw_set_color(c_white); // og c_white
        draw_text_shadow(argument0 + xoff, argument1 + yoff, p_text1);
        draw_sprite_ext(get_button_sprite(argument4), -1, argument0 + xoff + w1, argument1 + yoff + 6, 1, 1, 0, -1, argument5);
        draw_text_shadow(argument0 + xoff + w1 + b1 + sep * 2, argument1 + yoff, p_text2);
    } else {
        if (argument3 == 0) draw_set_halign(fa_center);
        if (argument3 == 2) draw_set_halign(fa_right);
        draw_set_color(c_white); // og c_white
        draw_text_shadow(argument0 + xoff, argument1 + yoff, p_text1 + get_button_string(argument4) + p_text2);
    }
    draw_set_alpha(1);
    draw_set_halign(fa_left);
} else {
    draw_set_font(fontMenuSmall2);
    draw_set_alpha(argument5);
    switch (argument3) {
        case 0: draw_set_halign(fa_center); break;
        case 1: draw_set_halign(fa_left); break;
        case 2: draw_set_halign(fa_right); break;
    }
    draw_text_shadow(argument0, argument1, argument2);
    draw_set_halign(fa_left);
    draw_set_alpha(1);
} // if (string_count("|", argument2) > 0) else
