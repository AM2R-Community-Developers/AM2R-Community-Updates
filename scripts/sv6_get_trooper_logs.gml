/// sv6_get_logs()
list = ds_list_create();
ds_list_read(list, base64_decode(file_text_read_string(argument0)));
i = 0;
j = 0;
repeat (8) {
    global.trooperlog[j] = readline();
    j += 1;
}
ds_list_clear(list);

for (i=0; i<8; i+=1) {
    if(global.trooperlog[i] == undefined) global.trooperlog[i] = 0;
}
