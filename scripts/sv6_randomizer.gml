/// sv6_add_main()
var list, str_list;
list = ds_list_create();

ds_list_add(list, oControl.mod_bombs);
ds_list_add(list, oControl.mod_spider);
ds_list_add(list, oControl.mod_jumpball);
ds_list_add(list, oControl.mod_hijump);
ds_list_add(list, oControl.mod_varia);
ds_list_add(list, oControl.mod_spacejump);
ds_list_add(list, oControl.mod_speedbooster);
ds_list_add(list, oControl.mod_screwattack);
ds_list_add(list, oControl.mod_charge);
ds_list_add(list, oControl.mod_ice);
ds_list_add(list, oControl.mod_wave);
ds_list_add(list, oControl.mod_spazer);
ds_list_add(list, oControl.mod_plasma); //13 total

//Missiles
ds_list_add(list, oControl.mod_52);
ds_list_add(list, oControl.mod_53);
ds_list_add(list, oControl.mod_54);
ds_list_add(list, oControl.mod_55);
ds_list_add(list, oControl.mod_56);
ds_list_add(list, oControl.mod_57);
ds_list_add(list, oControl.mod_60);
ds_list_add(list, oControl.mod_100);
ds_list_add(list, oControl.mod_101);
ds_list_add(list, oControl.mod_102);
ds_list_add(list, oControl.mod_104);
ds_list_add(list, oControl.mod_105);
ds_list_add(list, oControl.mod_106);
ds_list_add(list, oControl.mod_107);
ds_list_add(list, oControl.mod_109);
ds_list_add(list, oControl.mod_111);
ds_list_add(list, oControl.mod_150);
ds_list_add(list, oControl.mod_151);
ds_list_add(list, oControl.mod_152);
ds_list_add(list, oControl.mod_153);
ds_list_add(list, oControl.mod_154);
ds_list_add(list, oControl.mod_155);
ds_list_add(list, oControl.mod_156);
ds_list_add(list, oControl.mod_159);
ds_list_add(list, oControl.mod_161);
ds_list_add(list, oControl.mod_163);
ds_list_add(list, oControl.mod_202);
ds_list_add(list, oControl.mod_203);
ds_list_add(list, oControl.mod_204);
ds_list_add(list, oControl.mod_205);
ds_list_add(list, oControl.mod_208);
ds_list_add(list, oControl.mod_210);
ds_list_add(list, oControl.mod_211);
ds_list_add(list, oControl.mod_214);
ds_list_add(list, oControl.mod_250);
ds_list_add(list, oControl.mod_252);
ds_list_add(list, oControl.mod_255);
ds_list_add(list, oControl.mod_257);
ds_list_add(list, oControl.mod_259);
ds_list_add(list, oControl.mod_303);
ds_list_add(list, oControl.mod_304);
ds_list_add(list, oControl.mod_307);
ds_list_add(list, oControl.mod_308);
ds_list_add(list, oControl.mod_309); // 44 total
//Super Missiles
ds_list_add(list, oControl.mod_51);
ds_list_add(list, oControl.mod_110);
ds_list_add(list, oControl.mod_162);
ds_list_add(list, oControl.mod_206); //SPECIAL
ds_list_add(list, oControl.mod_207);
ds_list_add(list, oControl.mod_209);
ds_list_add(list, oControl.mod_215);
ds_list_add(list, oControl.mod_256);
ds_list_add(list, oControl.mod_300);
ds_list_add(list, oControl.mod_305); // 10
//Energy Tanks
ds_list_add(list, oControl.mod_50);
ds_list_add(list, oControl.mod_103);
ds_list_add(list, oControl.mod_108);
ds_list_add(list, oControl.mod_157);
ds_list_add(list, oControl.mod_158);
ds_list_add(list, oControl.mod_200);
ds_list_add(list, oControl.mod_201);
ds_list_add(list, oControl.mod_251);
ds_list_add(list, oControl.mod_254);
ds_list_add(list, oControl.mod_306); //10
//Power Bombs
ds_list_add(list, oControl.mod_58);
ds_list_add(list, oControl.mod_59);
ds_list_add(list, oControl.mod_112);
ds_list_add(list, oControl.mod_160);
ds_list_add(list, oControl.mod_212);
ds_list_add(list, oControl.mod_213);
ds_list_add(list, oControl.mod_253); //SPECIAL
ds_list_add(list, oControl.mod_258);
ds_list_add(list, oControl.mod_301);
ds_list_add(list, oControl.mod_302); //10

ds_list_add(list, oControl.mod_purerandombool);
ds_list_add(list, oControl.mod_randomgamebool);
ds_list_add(list, oControl.mod_splitrandom);
ds_list_add(list, oControl.mod_fusion);
ds_list_add(list, oControl.mod_diffmult);
ds_list_add(list, oControl.chozomessage);
ds_list_add(list, oControl.mod_gravity);
ds_list_add(list, global.gamemode); //8 total

i = 0;
repeat (25) { //120 total in list. 95 used up through chozomessage.
    ds_list_add(list, 0);
    i += 1;
}
str_list = ds_list_write(list);
ds_list_clear(list);
return str_list;
