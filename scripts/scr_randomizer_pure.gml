var temp_seed = random_get_seed();
randomize();
oControl.seed = random_get_seed();
random_set_seed(oControl.seed);

if (oControl.mod_usemanualseed == 1) { 
    random_set_seed(oControl.mod_seed);
    oControl.seed = oControl.mod_seed; 
}

// These lists no longer used after 1.3.3
oControl.list_bombs = ds_list_create();
ds_list_add(oControl.list_bombs,true,false);

oControl.list_powerbombs = ds_list_create();
if (oControl.mod_fusion == 1) { ds_list_add(oControl.list_powerbombs, true);}
else { ds_list_add(oControl.list_powerbombs,true); }
//ds_list_add(oControl.list_powerbombs,true);

oControl.list_speedbooster = ds_list_create();
ds_list_add(oControl.list_speedbooster,true,false); //1.3.3 - true,false,false
ds_list_shuffle(oControl.list_speedbooster);

oControl.list_spacejump = ds_list_create();
ds_list_add(oControl.list_spacejump,false);
ds_list_shuffle(oControl.list_spacejump);

//These lists still in use
oControl.list_torizo = ds_list_create();
ds_list_add(oControl.list_torizo,false);
ds_list_shuffle(oControl.list_torizo);

oControl.list_genesis = ds_list_create();
ds_list_add(oControl.list_genesis,true,false,false,false,false);
ds_list_shuffle(oControl.list_genesis);

oControl.list_ibeam = ds_list_create();
ds_list_add(oControl.list_ibeam,true,false,false,false,false);
ds_list_shuffle(oControl.list_ibeam);

oControl.list_jumpball = ds_list_create();
ds_list_add(oControl.list_jumpball,true,true,false,false);
ds_list_shuffle(oControl.list_jumpball);

//Not being used
oControl.list_33percent = ds_list_create();
ds_list_add(oControl.list_33percent, true,false,false);
ds_list_shuffle(oControl.list_33percent);
var percent33 = ds_list_find_value(oControl.list_33percent, ds_list_size(oControl.list_33percent) - 1);


//Technically the list holds the items. The oControl.mod variables are the locations!
oControl.list_locations = ds_list_create();
ds_list_add(oControl.list_locations, 52,53,54,55,56,57,60,100,101,102,104,105,106,107,109,111,150,151,152,153,154,155,156,159,161,163); //Missiles
ds_list_add(oControl.list_locations, 202,203,204,205,208,210,211,214,250,252,255,257,259,303,304,307,308,309); //Missiles
ds_list_add(oControl.list_locations, 51,110,162,207,209,215,256,300,305); //Super Missiles
ds_list_add(oControl.list_locations, 50,103,108,157,158,200,201,251,306); //Energy Tanks
if (oControl.mod_insanitymode == 0) { ds_list_add(oControl.list_locations, 254); }
ds_list_add(oControl.list_locations, 58,59,112,160,212,213,258,301,302); //Power Bombs
ds_list_shuffle(oControl.list_locations);


//Beginning of randomizer logic

//Area 6 Locations - no power ups
oControl.mod_51 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);

oControl.mod_56 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);

oControl.mod_60 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);

//Adding powerups to list after area 6 assignments
ds_list_add(oControl.list_locations, 0,2,3,4,5,6,7,8,9,10,11,12,13,14);
ds_list_shuffle(oControl.list_locations);

//these variables are being set. howerver some are not being used.
oControl.twocount_B_SJ = 0; // Bombs and Space Jump - Location: 53
oControl.twocount_HJ_SJ = 0; // Hi-Jump and Space Jump - Location: 57
oControl.threecount = 0; // Bombs, Hi-jump, and Space Jump - Locations: 158,160,161
oControl.bombs_placed = false;
oControl.hijump_placed = false;
oControl.spacejump_placed = false;
oControl.speed_placed = false;
oControl.screw_placed = false;

oControl.bombs_wall = false;
oControl.spider_wall = false;
oControl.spring_wall = false;
oControl.hijump_wall = false;
oControl.spacejump_wall = false;
oControl.screw_wall = false;
oControl.gravity_wall = false;
oControl.varia_wall = false;


var checkcounter = 0;





//Speed Booster Walled Items
oControl.mod_54 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_55 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_110 = scr_logic_SB_wall(true, true, false, true, false); //no screw attack, no springball(as of 1.4.3)
oControl.mod_161 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_162 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_201 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_204 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_205 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_207 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_208 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_209 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_212 = scr_logic_SB_wall(false, true, true, true, true); //no space jump
oControl.mod_301 = scr_logic_SB_wall(true, true, true, true, true);
oControl.mod_305 = scr_logic_SB_wall(true, false, true, true, true); // no gravity
oControl.mod_306 = scr_logic_SB_wall(false, false, true, true, true); //no space jump, no gravity
oControl.mod_307 = scr_logic_SB_wall(true, false, true, true, true); // no gravity
oControl.mod_309 = scr_logic_SB_wall(true, false, true, true, true); // no gravity
oControl.mod_255 = scr_logic_SB_wall(true, true, true, true, true); // added 1.4.4



//Plasma Beam Location - forced power up or energy tank
//var shuff = ds_list_find_value(oControl.mod_plasma, ds_list_size(oControl.list_torizo) - 1);
while (true)
{
    oControl.mod_plasma = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    //if (shuff == true) { break; }
    if (scr_PUorET(oControl.mod_plasma) == true) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);

//Space Jump - forced power up or energy tank
//var shuff = ds_list_find_value(oControl.list_torizo, ds_list_size(oControl.list_torizo) - 1);
while (true)
{
    oControl.mod_spacejump = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    //if (shuff == true) { break; }
    if (scr_PUorET(oControl.mod_spacejump) == true) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);


//Ice Beam - more likely to get Power-up or Energy Tank
var shuff = ds_list_find_value(oControl.list_ibeam, ds_list_size(oControl.list_ibeam) - 1);
while (true)
{
    oControl.mod_ice = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    if (shuff == true) { break; }
    if (scr_PUorET(oControl.mod_ice) == true) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);


//Genesis - more likely to get Power-up or Energy Tank
var shuff = ds_list_find_value(oControl.list_genesis, ds_list_size(oControl.list_genesis) - 1);
while (true)
{
    oControl.mod_50 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    if (shuff == true) { break; }
    if (scr_PUorET(oControl.mod_50) == true) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);

//Jump ball - 50% chance to be PU or ET
var shuff = ds_list_find_value(oControl.list_jumpball, ds_list_size(oControl.list_jumpball) - 1);
while (true)
{
    oControl.mod_jumpball = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    if (shuff == true) { break; }
    if (scr_PUorET(oControl.mod_jumpball) == true) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);




//Area 0 need bombs or space jump to get item

while (true)
{
    oControl.mod_53 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    if (oControl.mod_53 != 0)
    {    
        if (oControl.mod_53 != 7) { break; }
        else { if (oControl.bombs_wall == false && oControl.spacejump_wall == false) { break; } }
    }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);


//Area 0 need space jump or high jump to get this item
while (true)
{
    oControl.mod_57 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    if (oControl.mod_57 != 4 && oControl.mod_57 != 6)
    {  
        if (oControl.mod_57 != 7) { break; }
        else { if (oControl.spacejump_wall == false && oControl.hijump_wall == false) { break; } }
    }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);


//No Screw Attack & If Speed Booster here than no Screw Attack behind wall
while (true)
{
    checkcounter = 0;
    oControl.mod_259 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    if (oControl.mod_259 != 8) { checkcounter++; }
    if (oControl.mod_259 == 7 && oControl.screw_wall == true) { } else { checkcounter++; }
    if (checkcounter == 2) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);


//Cannot be Screw Attack && If Speed Booster here than no Screw Attack behind wall
while (true)
{
    checkcounter = 0;
    oControl.mod_300 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);
    if (oControl.mod_300 != 8) { checkcounter++; }
    if (oControl.mod_300 == 7 && oControl.screw_wall) { } else { checkcounter++; }
    if (checkcounter == 2) { break; }   
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);


//If Speed Booster here than no Screw Attack behind wall & Only one of three items: Bombs, Hi-Jump, Space Jump
while (true)
{
    checkcounter = 0;
    oControl.mod_160 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);    
    if (oControl.mod_160 == 7 && oControl.screw_wall) { } else { checkcounter++; }
    if (oControl.threecount > 1 && (oControl.mod_160 == 0 || oControl.mod_160 == 4 || oControl.mod_160 == 6)) { } else { checkcounter++; }
    if (checkcounter == 2) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);


//Only one of three items: Bombs, Hi-Jump, Space Jump
while (true)
{
    checkcounter = 0;
    oControl.mod_158 = ds_list_find_value(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);    
    if (oControl.threecount > 1 && (oControl.mod_158 == 0 || oControl.mod_158 == 4 || oControl.mod_158 == 6)) { } else { checkcounter++; }
    if (checkcounter == 1) { break; }
    ds_list_shuffle(oControl.list_locations);
}
ds_list_delete(oControl.list_locations, ds_list_size(oControl.list_locations) - 1);





//Powerups
oControl.mod_gravity = scr_random_draw_pool();
oControl.mod_screwattack = scr_random_draw_pool();
oControl.mod_hijump = scr_random_draw_pool();
oControl.mod_speedbooster = scr_random_draw_pool();
oControl.mod_wave = scr_random_draw_pool();
oControl.mod_spazer = scr_random_draw_pool();
oControl.mod_bombs = scr_random_draw_pool();
oControl.mod_spider = scr_random_draw_pool();
oControl.mod_varia = scr_random_draw_pool();
oControl.mod_charge = scr_random_draw_pool();


//Area 1
oControl.mod_100 = scr_random_draw_pool();
oControl.mod_101 = scr_random_draw_pool();
oControl.mod_102 = scr_random_draw_pool();
oControl.mod_103 = scr_random_draw_pool();
oControl.mod_104 = scr_random_draw_pool();
oControl.mod_105 = scr_random_draw_pool();
oControl.mod_106 = scr_random_draw_pool();
oControl.mod_107 = scr_random_draw_pool();
oControl.mod_108 = scr_random_draw_pool();
oControl.mod_109 = scr_random_draw_pool();
oControl.mod_52 = scr_random_draw_pool();
oControl.mod_152 = scr_random_draw_pool();
oControl.mod_163 = scr_random_draw_pool();

//Missiles
oControl.mod_111 = scr_random_draw_111(); // changed 1.4.4
oControl.mod_150 = scr_random_draw_pool();
oControl.mod_151 = scr_random_draw_pool();
oControl.mod_153 = scr_random_draw_pool();
oControl.mod_154 = scr_random_draw_pool();
oControl.mod_155 = scr_random_draw_pool();
oControl.mod_156 = scr_random_draw_pool();
oControl.mod_159 = scr_random_draw_pool();
oControl.mod_202 = scr_random_draw_pool();
oControl.mod_203 = scr_random_draw_pool();
oControl.mod_210 = scr_random_draw_pool();
oControl.mod_211 = scr_random_draw_pool();
oControl.mod_214 = scr_random_draw_pool();
oControl.mod_250 = scr_random_draw_pool();
oControl.mod_252 = scr_random_draw_pool();
//oControl.mod_255 = scr_random_draw_pool(); removed 1.4.4
oControl.mod_257 = scr_random_draw_spider();
oControl.mod_303 = scr_random_draw_gravity_spider(); //cannot be gravity, no spider
oControl.mod_304 = scr_random_draw_pool();
oControl.mod_308 = scr_random_draw_pool();

//Super Missiles

oControl.mod_215 = scr_random_draw_pool();
oControl.mod_256 = scr_random_draw_pool();
oControl.mod_206 = 206; //SM - first occurance


//Energy Tanks

//oControl.mod_50 //Genesis - above
oControl.mod_157 = scr_random_draw_pool();
oControl.mod_200 = scr_random_draw_pool();
oControl.mod_251 = scr_random_draw_pool();

if (oControl.mod_insanitymode == 0)
{
    oControl.mod_254 = scr_random_draw_pool();
}
else { oControl.mod_254 = 254; }


//Power Bombs
oControl.mod_302 = scr_random_draw_gravity(); //cannot be gravity
oControl.mod_58 = scr_random_draw_pool();
oControl.mod_59 = scr_random_draw_pool();
oControl.mod_112 = scr_random_draw_112(); // changed 1.4.4
oControl.mod_213 = scr_random_draw_pool();
oControl.mod_258 = scr_random_draw_pool();
//Last item variable CANNOT pull item from ANY SCRIPT EXCEPT for scr_random_draw_pool(). It could create endless loop!!!

oControl.mod_253 = 253; // PB - first occurance








//Destroy all lists to help with memory
ds_list_destroy(oControl.list_bombs);
ds_list_destroy(oControl.list_powerbombs);
ds_list_destroy(oControl.list_speedbooster);
ds_list_destroy(oControl.list_genesis);
ds_list_destroy(oControl.list_jumpball);
ds_list_destroy(oControl.list_33percent);
//ds_list_empty(oControl.list_locations);
ds_list_destroy(oControl.list_locations);

random_set_seed(temp_seed);









// below is old code for space jump. Probably don't need but it's here.
/*
    if (scr_PUorET(oControl.mod_spacejump) == true)
    {        
        if (percent33 == true && oControl.mod_spacejump < 20 && oControl.mod_spacejump != 7)
        {
            break;   
        }
        else if (percent33 == false && oControl.mod_spacejump > 20) { break; }
        //if (oControl.mod_spacejump != 7) { break; }
    }
*/


