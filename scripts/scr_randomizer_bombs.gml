
var list = ds_list_create();
ds_list_add(list,2,3,4,5,6,7,8,9,10,11,12,13,14);
ds_list_shuffle(list);

var list_random = ds_list_create();
ds_list_add(list_random,0,1,2);
ds_list_shuffle(list_random);

var list_random_value = ds_list_find_value(list_random, ds_list_size(list_random) - 1);

//Bombs
if (list_random_value == 0) { oControl.mod_bombs = 0; }
else
{
    if (oControl.mod_randomitems == 1)
    {
        while (true)
            {   
                oControl.mod_bombs = ds_list_find_value(list, ds_list_size(list) - 1);
                if (oControl.mod_bombs != 8) { break; }
                ds_list_shuffle(list);
            }
            ds_list_delete(list, ds_list_size(list) - 1);
    }
    else
    {
        oControl.mod_bombs = ds_list_find_value(list, ds_list_size(list) - 1);
        ds_list_delete(list, ds_list_size(list) - 1);
    }
}

//Spider Ball
if (list_random_value == 1) { oControl.mod_spider = 0; }
else
{
    if (oControl.mod_randomitems == 1)
    {
        while (true)
            {   
                oControl.mod_spider = ds_list_find_value(list, ds_list_size(list) - 1);
                if (oControl.mod_spider != 8) { break; }
                ds_list_shuffle(list);
            }
            ds_list_delete(list, ds_list_size(list) - 1);
    }
    else
    {
        oControl.mod_spider = ds_list_find_value(list, ds_list_size(list) - 1);
        ds_list_delete(list, ds_list_size(list) - 1);
    }
}

//Charge Beam
if (list_random_value == 2) { oControl.mod_charge = 0; }
else
{
    if (oControl.mod_randomitems == 1)
    {
        while (true)
            {   
                oControl.mod_charge = ds_list_find_value(list, ds_list_size(list) - 1);
                if (oControl.mod_charge != 8) { break; }
                ds_list_shuffle(list);
            }
            ds_list_delete(list, ds_list_size(list) - 1);
    }
    else
    {
        oControl.mod_charge = ds_list_find_value(list, ds_list_size(list) - 1);
        ds_list_delete(list, ds_list_size(list) - 1);
    }
}

oControl.mod_jumpball = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_hijump = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_varia = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_spacejump = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_speedbooster = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_screwattack = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_ice = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_wave = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_spazer = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_plasma = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

oControl.mod_gravity = ds_list_find_value(list, ds_list_size(list) - 1);
ds_list_delete(list, ds_list_size(list) - 1);

ds_list_empty(list);
