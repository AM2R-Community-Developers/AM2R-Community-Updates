/// isCollisionUnmorph()
checkupl = position_meeting(x - 3, y - 27, oSolid);
checkupr = position_meeting(x + 3, y - 27, oSolid);
checkl = position_meeting(x - 6, y - 27, oSolid);
checkr = position_meeting(x + 6 - 1, y - 27, oSolid); // BUGFIX
if (checkl == 1 && checkr == 1) {
    return 0;
    exit;
}
if (checkl == 0 && checkr == 0 && checkupl == 0 && checkupr == 0) {
    return 1;
    exit;
}
if (checkupr == 0 && checkr == 1) {
    return 2;
    exit;
}
if (checkupl == 0 && checkl == 1) {
    return 3;
    exit;
}
return 0;
