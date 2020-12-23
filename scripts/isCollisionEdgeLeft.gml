/// isCollisionEdgeLeft(offset)
if (collision_point(x, y + 2, oSolid, true, true) > 0
 && collision_line(x - argument0 - 4, y + 2, x - argument0, y + 2, oSolid, true, true) <= 0) {
    return 1;
} else return 0;
