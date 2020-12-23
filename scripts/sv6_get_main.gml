/// sv6_get_main()
list = ds_list_create();
ds_list_read(list, base64_decode(file_text_read_string(argument0)));
i = 0;
global.save_room = readline();
global.difficulty = readline();
global.gametime = readline();
global.itemstaken = readline();
global.etanks = readline();
global.mtanks = readline();
global.stanks = readline();
global.ptanks = readline();
global.monstersleft = readline();
global.monstersarea = readline();
global.lavastate = readline();
global.mapmarker = readline();
global.mapmarkerx = readline();
global.mapmarkery = readline();
ds_list_clear(list);
