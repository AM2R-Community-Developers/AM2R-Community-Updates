/// sv6_get_itemsA2()
list = ds_list_create();
ds_list_read(list, base64_decode(file_text_read_string(argument0)));
i = 0;
j = 200;
repeat (20) {
    global.item[j] = readline();
    j += 1;
}
ds_list_clear(list);
