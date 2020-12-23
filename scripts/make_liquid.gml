/// make_liquid(type, level, unknown, wave?, wspeed, wheight, layer)
global.watertype = argument0;
global.waterlevel = argument1;
if (argument0 == 0) {
    liquid = instance_create(0, global.waterlevel, oWater);
    filter = instance_create(0, global.waterlevel, oWaterFXV2);
}
if (argument0 == 1) {
    liquid = instance_create(0, global.waterlevel, oLavaSurface);
    instance_create(0, global.waterlevel, oLavaBGFX);
    filter = instance_create(0, global.waterlevel, oWaterFXV2);
}
if (argument2) liquid.alarm[0] = 1;
if (argument3) {
    liquid.wave = 1;
    liquid.wspeed = argument4;
    liquid.wheight = argument5;
} else {
    liquid.wave = 0;
    liquid.wspeed = 0;
    liquid.wheight = 0;
}
if (argument6 == 1) {
    liquid.depth = -500;
    filter.depth = -500;
} else {
    liquid.depth = -90;
    filter.depth = -90;
}
