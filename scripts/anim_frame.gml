/// anim_frame(sprite)
var numspr, frame;
numspr = sprite_get_number(argument0);
frame = argument1;
frame += argument2;
if (frame > numspr - 1) {
    frame = numspr - 1;
} else if (frame < 0) frame = 0;
return frame;
