/// is_past_deadzone(xvalue, yvalue, use_opdeadzone)
var dz, dist;
if (argument2 == 0) {
    dz = global.opdeadzone;
} else if (argument2 == 1) {
    dz = global.opxjoydz;
} else dz = 5;
dist = distance_to_point(x + argument0 * 105, y + argument1 * 105);
if (dist > dz) {
    return 1;
} else return 0;
