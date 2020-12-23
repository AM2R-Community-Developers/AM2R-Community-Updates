
var temp_seed = random_get_seed();
randomize();

if (oControl.mod_usemanualseed == 1) { random_set_seed(oControl.mod_seed); }

oControl.list_powerbombs = ds_list_create();
ds_list_add(oControl.list_powerbombs,true,false,false,false);






//Technically the list holds the items. The oControl.mod variables are the locations!
oControl.list_locations = ds_list_create();
ds_list_add(oControl.list_locations, 52,53,54,55,56,57,60,100,101,102,104,105,106,107,109,111,150,151,152,153,154,155,156,159,161,163); //Missiles
ds_list_add(oControl.list_locations, 202,203,204,205,208,210,211,214,250,252,255,257,259,303,304,307,308,309); //Missiles
ds_list_add(oControl.list_locations, 51,110,162,207,209,215,256,300,305); //Super Missiles
ds_list_add(oControl.list_locations, 50,103,108,157,158,200,201,251,306); //Energy Tanks
if (oControl.mod_insanitymode == 0) { ds_list_add(oControl.list_locations, 254); }
ds_list_add(oControl.list_locations,58,59,112,160,212,213,258,301,302);
ds_list_shuffle(oControl.list_locations);

/*
//Area 1 - Anti-Power Bomb Influence - Only affects split pool logic
oControl.mod_100 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_101 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_102 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_103 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_104 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_105 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_106 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_107 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_108 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
oControl.mod_109 = scr_logic_misc(false,false,true,scr_logic_PB_shuffle(),false,false,false,false);
*/

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


//Power Bombs
oControl.mod_58 = scr_random_draw_pool();
oControl.mod_59 = scr_random_draw_pool();
oControl.mod_112 = scr_random_draw_pool();
oControl.mod_160 = scr_random_draw_pool();
oControl.mod_212 = scr_random_draw_pool();
oControl.mod_213 = scr_random_draw_pool();
oControl.mod_258 = scr_random_draw_pool();
oControl.mod_301 = scr_random_draw_pool();
oControl.mod_302 = scr_random_draw_pool();

//Missiles
oControl.mod_52 = scr_random_draw_pool();
oControl.mod_53 = scr_random_draw_pool();
oControl.mod_54 = scr_random_draw_pool();
oControl.mod_55 = scr_random_draw_pool();
oControl.mod_56 = scr_random_draw_pool();
oControl.mod_57 = scr_random_draw_pool();
oControl.mod_60 = scr_random_draw_pool();
oControl.mod_111 = scr_random_draw_pool();
oControl.mod_150 = scr_random_draw_pool();
oControl.mod_151 = scr_random_draw_pool();
oControl.mod_152 = scr_random_draw_pool();
oControl.mod_153 = scr_random_draw_pool();
oControl.mod_154 = scr_random_draw_pool();
oControl.mod_155 = scr_random_draw_pool();
oControl.mod_156 = scr_random_draw_pool();
oControl.mod_159 = scr_random_draw_pool();
oControl.mod_161 = scr_random_draw_pool();
oControl.mod_163 = scr_random_draw_pool();
oControl.mod_202 = scr_random_draw_pool();
oControl.mod_203 = scr_random_draw_pool();
oControl.mod_204 = scr_random_draw_pool();
oControl.mod_205 = scr_random_draw_pool();
oControl.mod_208 = scr_random_draw_pool();
oControl.mod_210 = scr_random_draw_pool();
oControl.mod_211 = scr_random_draw_pool();
oControl.mod_214 = scr_random_draw_pool();
oControl.mod_250 = scr_random_draw_pool();
oControl.mod_252 = scr_random_draw_pool();
oControl.mod_255 = scr_random_draw_pool();
oControl.mod_257 = scr_random_draw_pool();
oControl.mod_259 = scr_random_draw_pool();
oControl.mod_303 = scr_random_draw_pool();
oControl.mod_304 = scr_random_draw_pool();
oControl.mod_307 = scr_random_draw_pool();
oControl.mod_308 = scr_random_draw_pool();
oControl.mod_309 = scr_random_draw_pool();


//Super Missiles
oControl.mod_51 = scr_random_draw_pool();
oControl.mod_110 = scr_random_draw_pool();
oControl.mod_162 = scr_random_draw_pool();
oControl.mod_207 = scr_random_draw_pool();
oControl.mod_209 = scr_random_draw_pool();
oControl.mod_215 = scr_random_draw_pool();
oControl.mod_256 = scr_random_draw_pool();
oControl.mod_300 = scr_random_draw_pool();
oControl.mod_305 = scr_random_draw_pool();

//Energy Tanks
oControl.mod_50 = scr_random_draw_pool();
oControl.mod_157 = scr_random_draw_pool();
oControl.mod_158 = scr_random_draw_pool();
oControl.mod_200 = scr_random_draw_pool();
oControl.mod_201 = scr_random_draw_pool();
oControl.mod_251 = scr_random_draw_pool();

if (oControl.mod_insanitymode == 0)
{
    oControl.mod_254 = scr_random_draw_pool();    
}
else { oControl.mod_254 = 254; }

oControl.mod_306 = scr_random_draw_pool();

oControl.mod_206 = 206; //SM
oControl.mod_253 = 253; // PB


ds_list_empty(oControl.list_locations);


random_set_seed(temp_seed);


