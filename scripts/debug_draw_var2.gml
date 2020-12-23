/// debug_draw_var2(offset, kind, text)
draw_set_font(fontMenuSmall);
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(argument2 + 1, 10 + i * 8 + 1, argument0);
draw_set_color(c_white);
if (string(argument1) == "") draw_set_color(c_yellow);
if (string(argument1) == "0") draw_set_color(c_gray);
draw_text(argument2, 10 + i * 8, argument0);
i += 1;
