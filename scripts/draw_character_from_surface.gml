/// draw_character_from_surface()
if (surface_exists(oCharacter.surf)) {
    draw_surface_ext(oCharacter.surf, argument0 - 32, argument1 - 54, 1, 1, 0, argument2, argument3);
} else {
    surface_free(oCharacter.surf);
    oCharacter.surf = surface_create(64, 64);
    draw_character_to_surface();
}
