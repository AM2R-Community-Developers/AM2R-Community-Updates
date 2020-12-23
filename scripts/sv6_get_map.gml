/// sv6_get_map()
list = ds_list_create();
ds_list_read(list, base64_decode(file_text_read_string(argument0)));
i = 0;
k = 0;
repeat (80) {
    j = 0;
    repeat (80) {
        global.dmap[k, j] = readline();
        j += 1;
    }
    k += 1;
}
ds_list_clear(list);
