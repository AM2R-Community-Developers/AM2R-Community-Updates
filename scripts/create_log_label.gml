/// create_log_label(text)
var l;
l = instance_create(10 + (oControl.widescreen_space/3), 53 + j * 16, oMenuLabel);
l.text = argument0;
l.bg_width = 100;
j += 1;
return l;
