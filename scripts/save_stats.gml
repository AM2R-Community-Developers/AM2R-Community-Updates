/// save_stats()
var filename, fid;
save_str[0] = sv_add_unlocks();
save_str[1] = sv_add_gallery();
save_str[2] = sv_add_stats();
save_str[3] = sv_add_achievements();
//save_str[4] = data_sav_extras();
filename = "data.sav";
fid = file_text_open_write(filename);
file_text_write_string(fid, rc4("[AM2R UnlockData V7.0]", "HEADER_KEY"));
file_text_writeln(fid);
i = 0;
repeat (4) {
    file_text_write_string(fid, base64_encode(save_str[i]));
    file_text_writeln(fid);
    i += 1;
}
file_text_close(fid);
if (os_is_native) crypt(filename, "XOR_DFJykQ8xX3PuNnkLt6QviqALOLF8cxIDx1D63DAdph4KGQ4rOJ7", 2);
