/// sv6_get_events()
list = ds_list_create();
ds_list_read(list, base64_decode(file_text_read_string(argument0)));
i = 0;
j = 0;
repeat (350) {
    global.event[j] = readline();
    j += 1;
}
ds_list_clear(list);
