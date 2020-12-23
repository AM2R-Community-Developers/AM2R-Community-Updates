/// sv6_load()

scr_default_global_items();

var header;
load_character_vars();
reset_map();
init_map();
filename = argument0;
if (os_is_native) {
    file_copy(filename, filename + "d");
    crypt(filename + "d", "XOR_DFJykQ8xX3PuNnkLt6QviqALOLF8cxIDx1D63DAdph4KGQ4rOJ7", 2);
    fid = file_text_open_read(filename + "d");
} else fid = file_text_open_read(filename);
header = rc4(file_text_read_string(fid), "HEADER_KEY");
file_text_readln(fid);
if (header != "[AM2R SaveData V7.0]") {
    file_text_close(fid);
    show_message_async("Save Data Corrupted");
    if (os_is_native) file_delete(filename + "d");
    file_delete(filename);
    room_goto(titleroom);
} else {
    sv6_get_main(fid);
    file_text_readln(fid);
    sv6_get_items(fid);
    file_text_readln(fid);
    sv6_get_events(fid);
    file_text_readln(fid);
    sv6_get_logs(fid);
    file_text_readln(fid);
    sv6_get_hints(fid);
    file_text_readln(fid);
    sv6_get_monsters(fid);
    file_text_readln(fid);
    sv6_get_inventory(fid);
    file_text_readln(fid);
    sv6_get_map(fid);
    file_text_readln(fid);
    sv6_get_random(fid);
    file_text_readln(fid); 
    sv6_get_trooper_logs(fid);
    file_text_readln(fid);
    sv6_get_seed(fid); //Added 1.4.3
    file_text_readln(fid); 
    file_text_close(fid);   
    if (os_is_native) file_delete(filename + "d");
    global.maxhealth = 99 + ((global.etanks * 100) * oControl.mod_etankhealthmult);
    global.playerhealth = global.maxhealth;
    if (global.difficulty < 2) {
        global.maxmissiles = oControl.mod_Mstartingcount + global.mtanks * 5;
        global.maxsmissiles = global.stanks * 2;
        global.maxpbombs = global.ptanks * 2;
    } else {
        global.maxmissiles = oControl.mod_Mstartingcount + global.mtanks * 2;
        global.maxsmissiles = global.stanks;
        global.maxpbombs = global.ptanks;
    }
    global.missiles = global.maxmissiles;
    global.smissiles = global.maxsmissiles;
    global.pbombs = global.maxpbombs;
    set_start_location();
    global.darkness = 0;
    global.timeofday = 0;
    global.roomsSinceLastSpawn = 0;

    global.ingame = 1;
    global.newgame = 0;
    //room_change(global.start_room, 3);
    room_change(global.start_room, 1);
    
    
    
} // if (header != "[AM2R SaveData V7.0]") else
