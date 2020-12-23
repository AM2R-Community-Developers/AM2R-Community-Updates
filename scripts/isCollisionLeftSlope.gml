/// isCollisionLeftSlope(offset_0_1)
if (argument0 == 0 && collision_line(round(x), round(y - 1), round(x - 10), round(y - 1), oSlope, true, true) > 0
 || argument0 == 1 && collision_line(round(x - 8), round(y), round(x - 8), round(y - 27), oSlope, true, true) > 0) return 1;
return 0;
