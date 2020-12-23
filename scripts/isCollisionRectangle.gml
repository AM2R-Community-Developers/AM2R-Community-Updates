/// isCollisionRectangle()
// Checks for collisions between axis-aligned bounding boxes.
// Used exactly once in entire game..?
w1 = argument2 - argument0;
h1 = argument3 - argument1;
w2 = argument6 - argument4;
h2 = argument7 - argument5;
if (w2 <= 0 || h2 <= 0 || w1 <= 0 || h1 <= 0) return 0;
w2 += argument4;
h2 += argument5;
w1 += argument0;
h1 += argument1;
return (w2 < argument4 || w2 > argument0) && (h2 < argument5 || h2 > argument1) && (w1 < argument0 || w1 > argument4) && (h1 < argument1 || h1 > argument5);
