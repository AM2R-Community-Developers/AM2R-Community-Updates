/// isCollisionCharacterTop(offset)
oCharacter.tempId = id;
with (oCharacter) {
    calculateCollisionBounds();
    if (collision_line(round(lb), round(bb + argument0 - 1), round(rb - 1), round(bb + argument0 - 1), tempId, true, true) > 0) return 1;
}
return 0;
