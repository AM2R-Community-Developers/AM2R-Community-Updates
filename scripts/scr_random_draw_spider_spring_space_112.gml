

while (true)
{
    checkcounter = 0;
    var shuff = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    
    var tc = 0;
    if (oControl.bombs_wall == true) tc++;
    if (oControl.spider_wall == true && oControl.spring_wall == true) tc++;
    if (oControl.spacejump_wall == true) tc++;
    
    if (shuff == 7 && tc > 1) { } else { checkcounter++; }
    //next line seems out of place. I'm trying to resolve issues without restricting speed booster from being here.
    if (shuff == 7 && oControl.screw_wall == true) { } else { checkcounter++; } 
    //Next line seems a little extreme but it's here so hard locks don't happen.
    if ((shuff == 0 || shuff == 2 || shuff == 3 || shuff == 6 || shuff == 7) && (oControl.mod_111 == 0 || oControl.mod_111 == 2 || oControl.mod_111 == 3 || oControl.mod_111 == 6 || oControl.mod_111 == 7)) { } else { checkcounter++; }
    if (checkcounter == 3) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
return shuff;


/*

while (true)
{
    checkcounter = 0;
    var shuff = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    
    var tc = 0;
    if (oControl.bombs_wall == true) tc++;
    if (oControl.spider_wall == true && oControl.spring_wall == true) tc++;
    if (oControl.spacejump_wall == true) tc++;
        
    if (shuff == 7 && tc > 1) { } else { break; }
    //if ((shuff == 2 || shuff == 3 || shuff == 6 || shuff == 7) && (oControl.mod_111 == 2 || oControl.mod_111 == 3 || oControl.mod_111 == 6 || oControl.mod_111 == 7)) { } else { checkcounter++; }
    //if (checkcounter == 2) { break; }
    ds_list_shuffle(oControl.list_locations);
    

}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
return shuff;
