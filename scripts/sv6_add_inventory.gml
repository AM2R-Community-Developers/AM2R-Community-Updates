/// sv6_add_inventory()
var list, str_list;
list = ds_list_create();
ds_list_add(list, global.currentsuit);
ds_list_add(list, global.cbeam);
ds_list_add(list, global.ibeam);
ds_list_add(list, global.wbeam);
ds_list_add(list, global.pbeam);
ds_list_add(list, global.sbeam);
ds_list_add(list, global.morphball);
ds_list_add(list, global.jumpball);
ds_list_add(list, global.powergrip);
ds_list_add(list, global.spacejump);
ds_list_add(list, global.screwattack);
ds_list_add(list, global.hijump);
ds_list_add(list, global.spiderball);
ds_list_add(list, global.speedbooster);
ds_list_add(list, global.bomb);
repeat (35) {
    ds_list_add(list, 0);
    i += 1;
}
str_list = ds_list_write(list);
ds_list_clear(list);
return str_list;
