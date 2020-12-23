///randomize_zeta_heads();

/* 
    Wanderer didn't commentate this, and I'm slightly confused at first glance.
    All comments here are mostly guesswork and are not guaranteed to be accurate!
    - Loj
*/


global.zeta_heads = ds_map_create();

var zeta_list = ds_list_create(); // List of Zetas whose heads we want to change.
ds_list_add(zeta_list, rm_a4h06, rm_a4h13, rm_a4a12, rm_a5c12); // Zetas are defined by room.

var zeta_sprites = ds_list_create(); // List of sprites to change heads to.
ds_list_add(zeta_sprites, sMZeta_Head, sMZeta_Head_Armored, sMZeta_Head_Bulky, sMZeta_Head_Elder, sMZeta_Head_Pointy);
ds_list_shuffle(zeta_sprites); // Shuffle list to do the actual head randomization.

for (i=0; i < ds_list_size(zeta_list); i += 1) { // Write Zeta sprite into each Zeta list slot.
    ds_map_add(global.zeta_heads, ds_list_find_value(zeta_list, i),  ds_list_find_value(zeta_sprites, i));
}

if(irandom(99) < 3) { // 3% chance to be the Legendary head.
    ds_map_replace(global.zeta_heads, ds_list_find_value(zeta_list, irandom(ds_list_size(zeta_list) - 1)), sMZeta_Head_Legendary);
}

ds_list_destroy(zeta_list); // Avoiding memory leaks. Yay!
ds_list_destroy(zeta_sprites);
