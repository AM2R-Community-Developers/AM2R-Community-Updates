///scr_logic_SB_wall(true_SpaceJump, true_gravity, true_screw_attack, true_spider, true_springball)

while (true)
{   
    checkcounter = 0;
    var temp_mod = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
   
    if (oControl.threecount <= 2 && (temp_mod == 0 || temp_mod == 4 || temp_mod == 6)) { } else { checkcounter++; }

    if (argument0 == true) { checkcounter++; } else { if (temp_mod != 6) { checkcounter++; } }
    if (argument1 == true) { checkcounter++; } else { if (temp_mod != 9) { checkcounter++; } }
    if (argument2 == true) { checkcounter++; } else { if (temp_mod != 8) { checkcounter++; } }
    if (argument3 == true) { checkcounter++; } else { if (temp_mod != 2) { checkcounter++; } }
    if (argument4 == true) { checkcounter++; } else { if (temp_mod != 3) { checkcounter++; } }
    if (temp_mod != 7) { checkcounter++; }
    if (checkcounter == 7) { break; }
    ds_list_shuffle(oControl.list_locations);
}
scr_randomizer_pure_wall(temp_mod);
scr_randomizer_pure_vars(temp_mod);
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
return temp_mod;
