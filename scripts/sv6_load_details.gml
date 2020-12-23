/// sv6_load_details()
var header;
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
    return -1;
} else {
    sv6_get_main(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    sv6_get_random(fid);
    file_text_readln(fid);
    file_text_readln(fid);
    sv6_get_seed(fid); //Added 1.4.3
    file_text_readln(fid);
    file_text_close(fid);
    if (os_is_native) file_delete(filename + "d");
    return 1;
}
