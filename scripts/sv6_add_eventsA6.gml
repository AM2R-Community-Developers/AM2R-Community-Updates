/// sv6_add_eventsA6()
var list, str_list;
list = ds_list_create();
i = 300;
repeat (50) {
    ds_list_add(list, global.event[i]);
    i += 1;
}
str_list = ds_list_write(list);
ds_list_clear(list);
return str_list;
