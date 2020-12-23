/// anim_frame_cycle(sprite)
var numspr, frame;
numspr = sprite_get_number(argument0);
frame = argument1;
frame += argument2;
if (frame > numspr - 1) {
    frame = 0;
} else if (frame < 0) frame = numspr - 1;
return frame;
