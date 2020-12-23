/// make_smoke_explosion2(x, y)
var expl;
expl = instance_create(argument0, argument1, oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
expl.sprite_index = sExplSmoke2;
expl.depth = -5;
return expl;
