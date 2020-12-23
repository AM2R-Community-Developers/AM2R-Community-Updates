/// init_languages()
var file;
global.currentlanguage = 0;
i = 0;
for (fid = file_text_open_read(working_directory + "lang/languages.txt"); !file_text_eof(fid); i += 1) {
    file = file_text_read_string(fid);
    if (file_exists(working_directory + "lang/" + file)) global.language[i] = working_directory + "lang/" + file;
    else i--
    file_text_readln(fid);
}
