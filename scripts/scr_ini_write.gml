// Item = Location - This is how qerty.ini lists items.

if (file_exists(working_directory + "\qwerty.ini")) file_delete(working_directory + "\qwerty.ini");
ini_open(working_directory + "\qwerty.ini");

    
ini_write_real('Items', string(oControl.mod_plasma), 14);
ini_write_real('Items', string(oControl.mod_spazer), 13);
ini_write_real('Items', string(oControl.mod_wave), 12);
ini_write_real('Items', string(oControl.mod_ice), 11);
ini_write_real('Items', string(oControl.mod_charge), 10);
ini_write_real('Items', string(oControl.mod_gravity), 9);
ini_write_real('Items', string(oControl.mod_screwattack), 8);
ini_write_real('Items', string(oControl.mod_speedbooster), 7);
ini_write_real('Items', string(oControl.mod_spacejump), 6);
ini_write_real('Items', string(oControl.mod_varia), 5);
ini_write_real('Items', string(oControl.mod_hijump), 4);
ini_write_real('Items', string(oControl.mod_jumpball), 3);
ini_write_real('Items', string(oControl.mod_spider), 2);
ini_write_real('Items', string(oControl.mod_bombs), 0);
//Missiles
ini_write_real('Items', string(oControl.mod_52), 52);
ini_write_real('Items', string(oControl.mod_53), 53);
ini_write_real('Items', string(oControl.mod_54), 54);
ini_write_real('Items', string(oControl.mod_55), 55);
ini_write_real('Items', string(oControl.mod_56), 56);
ini_write_real('Items', string(oControl.mod_57), 57);
ini_write_real('Items', string(oControl.mod_60), 60);
ini_write_real('Items', string(oControl.mod_100), 100);
ini_write_real('Items', string(oControl.mod_101), 101);
ini_write_real('Items', string(oControl.mod_102), 102);
ini_write_real('Items', string(oControl.mod_104), 104);
ini_write_real('Items', string(oControl.mod_105), 105);
ini_write_real('Items', string(oControl.mod_106), 106);
ini_write_real('Items', string(oControl.mod_107), 107);
ini_write_real('Items', string(oControl.mod_109), 109);
ini_write_real('Items', string(oControl.mod_111), 111);
ini_write_real('Items', string(oControl.mod_150), 150);
ini_write_real('Items', string(oControl.mod_151), 151);
ini_write_real('Items', string(oControl.mod_152), 152);
ini_write_real('Items', string(oControl.mod_153), 153);
ini_write_real('Items', string(oControl.mod_154), 154);
ini_write_real('Items', string(oControl.mod_155), 155);
ini_write_real('Items', string(oControl.mod_156), 156);
ini_write_real('Items', string(oControl.mod_159), 159);
ini_write_real('Items', string(oControl.mod_161), 161);
ini_write_real('Items', string(oControl.mod_163), 163);
ini_write_real('Items', string(oControl.mod_202), 202);
ini_write_real('Items', string(oControl.mod_203), 203);
ini_write_real('Items', string(oControl.mod_204), 204);
ini_write_real('Items', string(oControl.mod_205), 205);
ini_write_real('Items', string(oControl.mod_208), 208);
ini_write_real('Items', string(oControl.mod_210), 210);
ini_write_real('Items', string(oControl.mod_211), 211);
ini_write_real('Items', string(oControl.mod_214), 214);
ini_write_real('Items', string(oControl.mod_250), 250);
ini_write_real('Items', string(oControl.mod_252), 252);
ini_write_real('Items', string(oControl.mod_255), 255);
ini_write_real('Items', string(oControl.mod_257), 257);
ini_write_real('Items', string(oControl.mod_259), 259);
ini_write_real('Items', string(oControl.mod_303), 303);
ini_write_real('Items', string(oControl.mod_304), 304);
ini_write_real('Items', string(oControl.mod_307), 307);
ini_write_real('Items', string(oControl.mod_308), 308);
ini_write_real('Items', string(oControl.mod_309), 309);
//Super Missiles
ini_write_real('Items', string(oControl.mod_51), 51);
ini_write_real('Items', string(oControl.mod_110), 110);
ini_write_real('Items', string(oControl.mod_162), 162);
ini_write_real('Items', string(oControl.mod_206), 206);
ini_write_real('Items', string(oControl.mod_207), 207);
ini_write_real('Items', string(oControl.mod_209), 209);
ini_write_real('Items', string(oControl.mod_215), 215);
ini_write_real('Items', string(oControl.mod_256), 256);
ini_write_real('Items', string(oControl.mod_300), 300);
ini_write_real('Items', string(oControl.mod_305), 305);
//Energy Tanks
ini_write_real('Items', string(oControl.mod_50), 50);
ini_write_real('Items', string(oControl.mod_103), 103);
ini_write_real('Items', string(oControl.mod_108), 108);
ini_write_real('Items', string(oControl.mod_157), 157);
ini_write_real('Items', string(oControl.mod_158), 158);
ini_write_real('Items', string(oControl.mod_200), 200);
ini_write_real('Items', string(oControl.mod_201), 201);
ini_write_real('Items', string(oControl.mod_251), 251);
ini_write_real('Items', string(oControl.mod_254), 254);
ini_write_real('Items', string(oControl.mod_306), 306);
//Power Bombs
ini_write_real('Items', string(oControl.mod_58), 58);
ini_write_real('Items', string(oControl.mod_59), 59);
ini_write_real('Items', string(oControl.mod_112), 112);
ini_write_real('Items', string(oControl.mod_160), 160);
ini_write_real('Items', string(oControl.mod_212), 212);
ini_write_real('Items', string(oControl.mod_213), 213);
ini_write_real('Items', string(oControl.mod_253), 253);
ini_write_real('Items', string(oControl.mod_258), 258);
ini_write_real('Items', string(oControl.mod_301), 301);
ini_write_real('Items', string(oControl.mod_302), 302);

ini_close();
    
 
