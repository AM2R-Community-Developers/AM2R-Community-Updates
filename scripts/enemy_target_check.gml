/// enemy_target_check()
target = 0;
if (argument1 == 1 && distance_to_object(oCharacter) <= argument0) {
    target = 1;
}
if (argument1 == 0 && distance_to_object(oCharacter) <= argument0) {
    if (facing == 1 && x < oCharacter.x) target = 1;
    if (facing == -1 && x > oCharacter.x) target = 1;
}
