///data_load_extras()

list = ds_list_create();
ds_list_read(list, base64_decode(file_text_read_string(argument0)));
i = 0;

global.mod_fusion_unlocked = readline();
global.mod_gamebeaten = 1;

//if (is_undefined(global.mod_gamebeaten)) oControl.mod_gamebeaten = 0;
if (is_undefined(global.mod_fusion_unlocked)) global.mod_fusion_unlocked = 0;

ds_list_clear(list);
