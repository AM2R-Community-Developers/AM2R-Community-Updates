/// sv6_get_random()

list = ds_list_create();

ds_list_read(list, base64_decode(file_text_read_string(argument0)));
i = 0;

oControl.mod_bombs = readline();
oControl.mod_spider = readline();
oControl.mod_jumpball = readline();
oControl.mod_hijump = readline();
oControl.mod_varia = readline();
oControl.mod_spacejump = readline();
oControl.mod_speedbooster = readline();
oControl.mod_screwattack = readline();
oControl.mod_charge = readline();
oControl.mod_ice = readline();
oControl.mod_wave = readline();
oControl.mod_spazer = readline();
oControl.mod_plasma = readline();
//Missiles
oControl.mod_52 = readline();
oControl.mod_53 = readline();
oControl.mod_54 = readline();
oControl.mod_55 = readline();
oControl.mod_56 = readline();
oControl.mod_57 = readline();
oControl.mod_60 = readline();
oControl.mod_100 = readline();
oControl.mod_101 = readline();
oControl.mod_102 = readline();
oControl.mod_104 = readline();
oControl.mod_105 = readline();
oControl.mod_106 = readline();
oControl.mod_107 = readline();
oControl.mod_109 = readline();
oControl.mod_111 = readline();
oControl.mod_150 = readline();
oControl.mod_151 = readline();
oControl.mod_152 = readline();
oControl.mod_153 = readline();
oControl.mod_154 = readline();
oControl.mod_155 = readline();
oControl.mod_156 = readline();
oControl.mod_159 = readline();
oControl.mod_161 = readline();
oControl.mod_163 = readline();
oControl.mod_202 = readline();
oControl.mod_203 = readline();
oControl.mod_204 = readline();
oControl.mod_205 = readline();
oControl.mod_208 = readline();
oControl.mod_210 = readline();
oControl.mod_211 = readline();
oControl.mod_214 = readline();
oControl.mod_250 = readline();
oControl.mod_252 = readline();
oControl.mod_255 = readline();
oControl.mod_257 = readline();
oControl.mod_259 = readline();
oControl.mod_303 = readline();
oControl.mod_304 = readline();
oControl.mod_307 = readline();
oControl.mod_308 = readline();
oControl.mod_309 = readline();
//Super Missiles
oControl.mod_51 = readline();
oControl.mod_110 = readline();;
oControl.mod_162 = readline();
oControl.mod_206 = readline(); //SPECIAL
oControl.mod_207 = readline();
oControl.mod_209 = readline();
oControl.mod_215 = readline();
oControl.mod_256 = readline();
oControl.mod_300 = readline();
oControl.mod_305 = readline();
//Energy Tanks
oControl.mod_50 = readline();
oControl.mod_103 = readline();
oControl.mod_108 = readline();
oControl.mod_157 = readline();
oControl.mod_158 = readline();
oControl.mod_200 = readline();
oControl.mod_201 = readline();
oControl.mod_251 = readline();
oControl.mod_254 = readline();
oControl.mod_306 = readline();
//Power Bombs
oControl.mod_58 = readline();
oControl.mod_59 = readline();
oControl.mod_112 = readline();
oControl.mod_160 = readline();
oControl.mod_212 = readline();
oControl.mod_213 = readline();
oControl.mod_253 = readline(); //SPECIAL
oControl.mod_258 = readline();
oControl.mod_301 = readline();
oControl.mod_302 = readline();
//Random
oControl.mod_purerandombool = readline();
oControl.mod_randomgamebool = readline();
oControl.mod_splitrandom = readline();
oControl.mod_fusion = readline();
oControl.mod_diffmult = readline();
oControl.chozomessage = readline();
oControl.mod_gravity = readline();
global.gamemode = readline();

ds_list_clear(list);

scr_load_undefined(); //Just in case. Needed if used old save editor or coming from old version of AM2R.

var t = 0;

