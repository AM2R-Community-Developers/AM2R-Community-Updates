/// is_walkzone(xvalue, yvalue, use_opdeadzone)
var dz, ratio, dist;
if (argument2 == 0) {
    dz = global.opdeadzone;
    ratio = 2;
} else if (argument2 == 1) {
    dz = global.opxjoydz;
    ratio = 2;
} else {
    dz = 20;
    ratio = 6;
}
if (global.opanalogwalk == 0) {
    return 0;
} else {
    dist = distance_to_point(x + argument0 * 105, y + argument1 * 105);
    if (dist < (100 - dz) / ratio + dz) {
        return 1;
    } else return 0;
}
