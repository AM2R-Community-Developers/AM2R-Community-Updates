/// crypt(file, encryption_key)
// I might have messed up something (game id?) here because 
// official and recompiled builds don't seem to be compatible.
if (!file_exists(argument0)) return -1;
var keypos = 0;
var gmid = string(game_id);
var key = "";
var read = 0;
var file = 0;
var epos = 0;
var rate = min(argument2, 10);
rate = max(rate, 0);
repeat (5) gmid += gmid;
epos = 0;
var keys;
repeat (floor(string_length(string(game_id)) * 5)) {
    keys[epos] = ord(string_copy(gmid, epos, 2)) ^ ord(string_char_at(argument1, keypos)) - floor(epos / 3);
    keypos += 1;
    if (keypos > string_length(argument1)) keypos = 1;
    epos += 1;
}
epos -= 1;
keypos = 0;
file = file_bin_open(argument0, 2);
file_bin_seek(file, 0);
var filesize = file_bin_size(file);
rate *= filesize / 10000;
rate = round(rate);
do {
    read = file_bin_read_byte(file);
    file_bin_seek(file, file_bin_position(file) - 1);
    file_bin_write_byte(file, read ^ keys[keypos]);
    keypos += 1;
    if (keypos > epos) keypos = 1;
    if (rate) file_bin_seek(file, file_bin_position(file) + rate);
} until (file_bin_position(file) >= filesize);
file_bin_close(file);
return 1;
