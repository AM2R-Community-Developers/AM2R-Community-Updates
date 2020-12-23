/// isCollisionCharacterBottom(offset)
oCharacter.tempId = id;
with (oCharacter) {
    calculateCollisionBounds();
    if (collision_line(round(lb), round(tb - argument0), round(rb - 1), round(tb - argument0), tempId, true, true) > 0) return 1;
}
return 0;
