/*
global.maprandom = ds_map_create();


ds_map_replace(global.maprandom, oControl.mod_bombs, 0);
ds_map_replace(global.maprandom, 1, 1);
ds_map_replace(global.maprandom, oControl.mod_spider, 2);
ds_map_replace(global.maprandom, oControl.mod_jumpball, 3);
ds_map_replace(global.maprandom, oControl.mod_hijump, 4);
ds_map_replace(global.maprandom, oControl.mod_varia, 5);
ds_map_replace(global.maprandom, oControl.mod_spacejump, 6);
ds_map_replace(global.maprandom, oControl.mod_speedbooster, 7);
ds_map_replace(global.maprandom, oControl.mod_screwattack, 8);
ds_map_replace(global.maprandom, oControl.mod_charge, 10);
ds_map_replace(global.maprandom, oControl.mod_ice, 11);
ds_map_replace(global.maprandom, oControl.mod_wave, 12);
ds_map_replace(global.maprandom, oControl.mod_spazer, 13);
ds_map_replace(global.maprandom, oControl.mod_plasma, 14);



ini_open(working_directory + "random" + string(global.saveslot + 1) + ".ini");
ini_write_string("Items", "Random", ds_map_write(global.maprandom));

ini_close();



