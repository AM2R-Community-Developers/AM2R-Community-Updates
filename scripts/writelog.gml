/// writelog(text)
if (global.opwritelog == 1) {
    lfid = file_text_open_append("am2r_log.txt");
    file_text_write_string(lfid, date_datetime_string(date_current_datetime()) + ": " + string(argument0));
    file_text_writeln(lfid);
    file_text_close(lfid);
}
