/// sv6_save()
// I suggest that you don't touch this entire folder
// of scripts for sake of your own sanity.
var filename, fid;
save_str[0] = sv6_add_main();
save_str[1] = sv6_add_items();
save_str[2] = sv6_add_events();
save_str[3] = sv6_add_logs();
save_str[4] = sv6_add_hints();
save_str[5] = sv6_add_monsters();
save_str[6] = sv6_add_inventory();
save_str[7] = sv6_add_map();
save_str[8] = sv6_randomizer();
save_str[9] = sv6_add_trooper_logs();
save_str[10] = sv6_add_seed(); //Added 1.4.3
filename = argument0;
fid = file_text_open_write(filename);
file_text_write_string(fid, rc4("[AM2R SaveData V7.0]", "HEADER_KEY"));
file_text_writeln(fid);
i = 0;
repeat (10) {
    file_text_write_string(fid, base64_encode(save_str[i]));
    file_text_writeln(fid);
    i += 1;
}
file_text_write_string(fid, base64_encode(save_str[i]));
file_text_writeln(fid);
file_text_close(fid);
if (os_is_native) crypt(filename, "XOR_DFJykQ8xX3PuNnkLt6QviqALOLF8cxIDx1D63DAdph4KGQ4rOJ7", 2);
