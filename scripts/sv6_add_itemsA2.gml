/// sv6_add_itemsA2()
var list, i, str_list;
list = ds_list_create();
i = 200;
repeat (20) {
    ds_list_add(list, global.item[i]);
    i += 1;
}
str_list = ds_list_write(list);
ds_list_clear(list);
return str_list;
