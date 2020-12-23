//This script should not be used anymore!
/*

//global.maprandom = ds_map_create();

scr_rand_encrypt_read();


ini_open(working_directory + "random" + string(global.saveslot + 1) + ".ini");
/* comment
oControl.mod_bombs = ini_read_real('Items', '0', 0);
oControl.mod_spider = ini_read_real('Items', '2', 2);
oControl.mod_jumpball = ini_read_real('Items', '3', 3);
oControl.mod_hijump = ini_read_real('Items', '4', 4);
oControl.mod_varia = ini_read_real('Items', '5', 5);
oControl.mod_spacejump = ini_read_real('Items', '6', 6);
oControl.mod_speedbooster = ini_read_real('Items', '7', 7);
oControl.mod_screwattack = ini_read_real('Items', '8', 8);
oControl.mod_charge = ini_read_real('Items', '10', 10);
oControl.mod_ice = ini_read_real('Items', '11', 11);
oControl.mod_wave = ini_read_real('Items', '12', 12);
oControl.mod_spazer = ini_read_real('Items', '13', 13);
oControl.mod_plasma = ini_read_real('Items', '14', 14);
// uncomment
//Items
//Missiles
oControl.mod_52 = ini_read_real('Items', '52', 52);
oControl.mod_53 = ini_read_real('Items', '53', 53);
oControl.mod_54 = ini_read_real('Items', '54', 54);
oControl.mod_55 = ini_read_real('Items', '55', 55);
oControl.mod_56 = ini_read_real('Items', '56', 56);
oControl.mod_57 = ini_read_real('Items', '57', 57);
oControl.mod_60 = ini_read_real('Items', '60', 60);
oControl.mod_100 = ini_read_real('Items', '100', 100);
oControl.mod_101 = ini_read_real('Items', '101', 101);
oControl.mod_102 = ini_read_real('Items', '102', 102);
oControl.mod_104 = ini_read_real('Items', '104', 104);
oControl.mod_105 = ini_read_real('Items', '105', 105);
oControl.mod_106 = ini_read_real('Items', '106', 106);
oControl.mod_107 = ini_read_real('Items', '107', 107);
oControl.mod_109 = ini_read_real('Items', '109', 109);
oControl.mod_111 = ini_read_real('Items', '111', 111);
oControl.mod_150 = ini_read_real('Items', '150', 150);
oControl.mod_151 = ini_read_real('Items', '151', 151);
oControl.mod_152 = ini_read_real('Items', '152', 152);
oControl.mod_153 = ini_read_real('Items', '153', 153);
oControl.mod_154 = ini_read_real('Items', '154', 154);
oControl.mod_155 = ini_read_real('Items', '155', 155);
oControl.mod_156 = ini_read_real('Items', '156', 156);
oControl.mod_159 = ini_read_real('Items', '159', 159);
oControl.mod_161 = ini_read_real('Items', '161', 161);
oControl.mod_163 = ini_read_real('Items', '163', 163);
oControl.mod_202 = ini_read_real('Items', '202', 202);
oControl.mod_203 = ini_read_real('Items', '203', 203);
oControl.mod_204 = ini_read_real('Items', '204', 204);
oControl.mod_205 = ini_read_real('Items', '205', 205);
oControl.mod_208 = ini_read_real('Items', '208', 208);
oControl.mod_210 = ini_read_real('Items', '210', 210);
oControl.mod_211 = ini_read_real('Items', '211', 211);
oControl.mod_214 = ini_read_real('Items', '214', 214);
oControl.mod_250 = ini_read_real('Items', '250', 250);
oControl.mod_252 = ini_read_real('Items', '252', 252);
oControl.mod_255 = ini_read_real('Items', '255', 255);
oControl.mod_257 = ini_read_real('Items', '257', 257);
oControl.mod_259 = ini_read_real('Items', '259', 259);
oControl.mod_303 = ini_read_real('Items', '303', 303);
oControl.mod_304 = ini_read_real('Items', '304', 304);
oControl.mod_307 = ini_read_real('Items', '307', 307);
oControl.mod_308 = ini_read_real('Items', '308', 308);
oControl.mod_309 = ini_read_real('Items', '309', 309);
//Super Missiles
oControl.mod_51 = ini_read_real('Items', '51', 51);
oControl.mod_110 = ini_read_real('Items', '110', 110);
oControl.mod_162 = ini_read_real('Items', '162', 162);
oControl.mod_206 = ini_read_real('Items', '206', 206); //SPECIAL
oControl.mod_207 = ini_read_real('Items', '207', 207);
oControl.mod_209 = ini_read_real('Items', '209', 209);
oControl.mod_215 = ini_read_real('Items', '215', 215);
oControl.mod_256 = ini_read_real('Items', '256', 256);
oControl.mod_300 = ini_read_real('Items', '300', 300);
oControl.mod_305 = ini_read_real('Items', '305', 305);
//Energy Tanks
oControl.mod_50 = ini_read_real('Items', '50', 50);
oControl.mod_103 = ini_read_real('Items', '103', 103);
oControl.mod_108 = ini_read_real('Items', '108', 108);
oControl.mod_157 = ini_read_real('Items', '157', 157);
oControl.mod_158 = ini_read_real('Items', '158', 158);
oControl.mod_200 = ini_read_real('Items', '200', 200);
oControl.mod_201 = ini_read_real('Items', '201', 201);
oControl.mod_251 = ini_read_real('Items', '251', 251);
oControl.mod_254 = ini_read_real('Items', '254', 254);
oControl.mod_306 = ini_read_real('Items', '306', 306);
//Power Bombs
oControl.mod_58 = ini_read_real('Items', '58', 58);
oControl.mod_59 = ini_read_real('Items', '59', 59);
oControl.mod_112 = ini_read_real('Items', '112', 112);
oControl.mod_160 = ini_read_real('Items', '160', 160);
oControl.mod_212 = ini_read_real('Items', '212', 212);
oControl.mod_213 = ini_read_real('Items', '213', 213);
oControl.mod_253 = ini_read_real('Items', '253', 253); //SPECIAL
oControl.mod_258 = ini_read_real('Items', '258', 258);
oControl.mod_301 = ini_read_real('Items', '301', 301);
oControl.mod_302 = ini_read_real('Items', '302', 302);


ini_close();
/*
