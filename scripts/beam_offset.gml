/// beam_offset(offset, direction)
if (argument1 == 0) x += argument0;
if (argument1 == 180) x -= argument0;
if (argument1 == 90) y -= argument0;
if (argument1 == 270) y += argument0;
if (argument1 == 45) {
    x += round(argument0 / 2);
    y -= round(argument0 / 2);
}
if (argument1 == 135) {
    x -= round(argument0 / 2);
    y -= round(argument0 / 2);
}
if (argument1 == 225) {
    x -= round(argument0 / 2);
    y += round(argument0 / 2);
}
if (argument1 == 315) {
    x += round(argument0 / 2);
    y += round(argument0 / 2);
}
