/// create_log_obj(offset, label, text, pic, spacing, log_id)
l = instance_create(32, 64 + argument0 * argument4, oLog);
l.label = argument1;
l.ltext = argument2;
l.lpic = argument3;
l.optionid = argument0;
l.logid = argument5;
return l;
