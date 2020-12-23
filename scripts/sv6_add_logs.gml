/// sv6_add_logs()
var list, str_list;
list = ds_list_create();
i = 0;
repeat (50) {
    ds_list_add(list, global.log[i]);
    ds_list_add(list, global.newlog[i]);
    i += 1;
}
str_list = ds_list_write(list);
ds_list_clear(list);
return str_list;
