///scr_logic_misc(check_bombs,bombs_var,check_PB,PB_var,check_SB,SB_var,check_SJ,SJ_var)
//check_bombs = 0
//bombs_var = 1
//check_PB = 2
//PB_var = 3
//check_SB = 4
//SB_var = 5
//check_SJ = 6
//SJ_var = 7

while (true)
{
    checkcounter = 0;
    temp_mod = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    
    //check_bombs
    if (argument0 == true) 
    {
        if (argument1 == true) { checkcounter++; }
        else 
        { 
            if (temp_mod != 0) { checkcounter++; } 
        }
    }
    else { checkcounter++; }

    //check_pb
    if (argument2 == true)
    {
        if (argument3 == true) { checkcounter++; }
        else 
        { 
            if (temp_mod != 58 && temp_mod != 59 && temp_mod != 112 && temp_mod != 160 && temp_mod != 212 && temp_mod != 213 && temp_mod != 258 && temp_mod != 301 && temp_mod != 302) { checkcounter++; } 
        }
    }
    else { checkcounter++; }   
    
    //check_SB
    if (argument4 == true) 
    {
        if (argument5 == true) { checkcounter++; }
        else { if (temp_mod != 7) { checkcounter++; } }
    }
    else { checkcounter++; }   
    
    //check_SJ
    if (argument6 == true) 
    {
        if (argument7 == true) { checkcounter++; }
        else { if (temp_mod != 6) { checkcounter++; } }
    }
    else { checkcounter++; }   

    if (checkcounter == 4) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
return temp_mod;

