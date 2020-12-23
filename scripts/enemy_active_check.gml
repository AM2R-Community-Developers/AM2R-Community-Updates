/// enemy_active_check(range)


if (x < view_xview[0] - oControl.widescreen_space/2 - argument0 || x > view_xview[0] + 320 + oControl.widescreen_space/2 + argument0
 || y < view_yview[0] - argument0 || y > view_yview[0] + 240 + argument0) {
    active = 0;
} else active = 1;

/*if (x < view_xview[0] - argument0 || x > view_xview[0] + 320 + argument0
 || y < view_yview[0] - argument0 || y > view_yview[0] + 240 + argument0) {
    active = 0;
} else active = 1;
