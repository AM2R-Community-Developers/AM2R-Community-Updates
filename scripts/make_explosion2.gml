/// make_explosion2(x, y)
expl = instance_create(argument0, argument1, oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
expl.sprite_index = sExpl1;
expl.depth = -2;
expl = instance_create(argument0, argument1, oFXAnimSpark);
expl.image_speed = 0.3;
expl.additive = 0;
expl.sprite_index = sExplSmoke;
expl.depth = -1;
