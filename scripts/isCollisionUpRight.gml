/// isCollisionUpRight()
var yoff;
if (yVel <= 0) {
    yoff = -1 + yVel * 2;
    if (collision_line(x, y + collisionBoundsOffsetTopY, x, y + collisionBoundsOffsetTopY + yoff, oSolid, true, true) == noone) {
        if (collision_line(x + collisionBoundsOffsetRightX - 1, y + collisionBoundsOffsetTopY, x + collisionBoundsOffsetRightX - 1, y + collisionBoundsOffsetTopY + yoff, oSolid, true, true) > 0) return 1; // BUGFIX
    }
}
return 0;
