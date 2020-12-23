///randomize_omega_types();

global.omega_types = ds_map_create();

var omega_list = ds_list_create();
ds_list_add(omega_list, rm_a6b08, rm_a6b10, rm_a6b12);
//Omega Bodies
var omega_type_sprites = ds_list_create();
ds_list_add(omega_type_sprites, sMOmega_Head, sMOmega_Head_Fusion, sMOmega_Head_Crested);
ds_list_shuffle(omega_type_sprites);

for (i=0; i<ds_list_size(omega_list); i+=1) {
    ds_map_add(global.omega_types, ds_list_find_value(omega_list, i),  ds_list_find_value(omega_type_sprites, i));
}
ds_map_add(global.omega_types, rm_a6a09B, sMOmega_Head);

ds_list_destroy(omega_list);
ds_list_destroy(omega_type_sprites);
