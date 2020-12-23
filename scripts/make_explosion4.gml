/// make_explosion4(x, y)
expl = instance_create(argument0, argument1, oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
expl.sprite_index = sExpl2;
expl.depth = -2;
expl = instance_create(argument0, argument1, oFXAnimSpark);
expl.image_speed = 1;
expl.additive = 0;
expl.sprite_index = sShockwave;
expl.depth = -1;
