/// make_explosion1big(x, y)
var expl;
expl = instance_create(argument0, argument1, oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
expl.sprite_index = sExpl1Big;
return expl;
