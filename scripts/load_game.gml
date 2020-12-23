/// load_game(path)
sv6_load(argument0);

//scr_randomizer_read()
//scr_rand_encrypt_read();

if (global.event[176] == 1 || global.metdead[23] == 1 || global.metdead[24] == 1 || global.item[oControl.mod_215] == 1) global.timeofday = 1;

if (file_exists(working_directory + "\swap.ini")) file_delete(working_directory + "\swap.ini");

