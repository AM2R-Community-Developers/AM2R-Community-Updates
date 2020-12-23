


while (true)
{
    var shuff = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);       
    if (shuff != 2 && shuff != 6 && shuff != 7) { break; }
    if (shuff != 2 && oControl.spider_wall == false && oControl.spacejump_wall == false) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
return shuff;
