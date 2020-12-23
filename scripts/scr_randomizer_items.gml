var temp_seed = random_get_seed();
randomize();
oControl.seed = random_get_seed();
random_set_seed(oControl.seed);

if (oControl.mod_usemanualseed == 1) { 
    random_set_seed(oControl.mod_seed);
    oControl.seed = oControl.mod_seed; 
}

var randpb = argument0;
// randpb = 0 = Bombs || Classic Mode+
// randpb = 1 = Screw Attack
// randpb = 2 = Power Bombs

var list_locations = ds_list_create();


//Technically the list holds the items. The oControl.mod variables are the locations!
ds_list_add(list_locations, 52,53,54,55,56,57,60,100,101,102,104,105,106,107,109,111,150,151,152,153,154,155,156,159,161,163); //Missiles
ds_list_add(list_locations, 202,203,204,205,208,210,211,214,250,252,255,257,259,303,304,307,308,309); //Missiles
ds_list_add(list_locations, 51,110,162,207,209,215,256,300,305); //Super Missiles
ds_list_add(list_locations, 50,103,108,157,158,200,201,251,306); //Energy Tanks
if (oControl.mod_insanitymode == 0) { ds_list_add(list_locations, 254); }
if (randpb == 0) ds_list_add(list_locations,58,59,112,160,212,213,258,301,302);
ds_list_shuffle(list_locations);

//ds_list_add(list_locations,58,59,112,160,212,213,258,301,302); //SA
//ds_list_add(list_locations,59,112,160,212,213,258,301,302); //PB

oControl.mod_101 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_102 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_104 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_105 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_106 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

if (randpb == 2)
{
    oControl.mod_108 = 58;
}
else
{
    oControl.mod_108 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
    ds_list_delete(list_locations, ds_list_size(list_locations) - 1);
}

oControl.mod_109 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);


if (randpb == 1)
{
    ds_list_add(list_locations,58,59,112,160,212,213,258,301,302); //SA
    ds_list_shuffle(list_locations);
}


oControl.mod_100 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_103 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_107 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_111 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_112 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

if (randpb == 2)
{
    ds_list_add(list_locations,59,112,160,212,213,258,301,302); //PB
    ds_list_shuffle(list_locations);
}


//Power Bombs

oControl.mod_58 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);
    
oControl.mod_59 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_160 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_212 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_213 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_258 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_301 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_302 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);


//Missiles
oControl.mod_52 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_53 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_54 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_55 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_56 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_57 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_60 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);


oControl.mod_150 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_151 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_152 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_153 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_154 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_155 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_156 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_159 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_161 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_163 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_202 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_203 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_204 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_205 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_208 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_210 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_211 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_214 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_250 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_252 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_255 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_257 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_259 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_303 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_304 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_307 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_308 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_309 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);


//Super Missiles
oControl.mod_51 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_110 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_162 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_207 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_209 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_215 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_256 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_300 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_305 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);


//Energy Tanks
oControl.mod_50 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);


oControl.mod_157 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_158 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_200 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_201 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

oControl.mod_251 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);

if (oControl.mod_insanitymode == 0)
{
    oControl.mod_254 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
    ds_list_delete(list_locations, ds_list_size(list_locations) - 1);
}
else { oControl.mod_254 = 254; }

oControl.mod_306 = ds_list_find_value(list_locations, ds_list_size(list_locations) - 1);
ds_list_delete(list_locations, ds_list_size(list_locations) - 1);


oControl.mod_206 = 206; //SM
oControl.mod_253 = 253; // PB


ds_list_empty(list_locations);


random_set_seed(temp_seed);


