/// isCollisionCharacterRight(offset)
oCharacter.tempId = id;
with (oCharacter) {
    calculateCollisionBounds();
    if (collision_line(round(lb - argument0), round(tb), round(lb - argument0), round(bb - 1), tempId, true, true) > 0) return 1;
}
return 0;
