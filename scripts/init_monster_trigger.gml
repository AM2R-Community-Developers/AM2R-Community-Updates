/// init_monster_trigger(met_id, facing)
if (global.metdead[argument0] == 1) {
    instance_destroy();
    exit;
}
myid = argument0;
facing = argument1;
image_xscale = facing;
