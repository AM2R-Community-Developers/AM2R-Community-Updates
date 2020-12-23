/// scr_fixitem_encrypted(original_item, item_location)
if (file_exists(working_directory + "\swap.ini")) file_delete(working_directory + "\swap.ini");
ini_open(working_directory + "\swap.ini");

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
ini_open(working_directory + "\swap.ini");

var can_return = false;
if (ini_read_real('Items', string(argument0), argument0) == argument0) { can_return = true; }
if (can_return) { ini_close(); return argument0; }

var swap_location = ini_read_real('Items', string(argument0), argument0)
var swap_item = 1;
//Powerups
if (ini_read_real('Items', '0', 0) == argument1) { swap_item = 0; }
if (ini_read_real('Items', '2', 2) == argument1) { swap_item = 2; }
if (ini_read_real('Items', '3', 3) == argument1) { swap_item = 3; }
if (ini_read_real('Items', '4', 4) == argument1) { swap_item = 4; }
if (ini_read_real('Items', '5', 5) == argument1) { swap_item = 5; }
if (ini_read_real('Items', '6', 6) == argument1) { swap_item = 6; }
if (ini_read_real('Items', '7', 7) == argument1) { swap_item = 7; }
if (ini_read_real('Items', '8', 8) == argument1) { swap_item = 8; }
if (ini_read_real('Items', '10', 10) == argument1) { swap_item = 10; }
if (ini_read_real('Items', '11', 11) == argument1) { swap_item = 11; }
if (ini_read_real('Items', '12', 12) == argument1) { swap_item = 12; }
if (ini_read_real('Items', '13', 13) == argument1) { swap_item = 13; }
if (ini_read_real('Items', '14', 14) == argument1) { swap_item = 14; }
//Missiles
if (ini_read_real('Items', '52', 52) == argument1) { swap_item = 52; }
if (ini_read_real('Items', '53', 53) == argument1) { swap_item = 53; }
if (ini_read_real('Items', '54', 54) == argument1) { swap_item = 54; }
if (ini_read_real('Items', '55', 55) == argument1) { swap_item = 55; }
if (ini_read_real('Items', '56', 56) == argument1) { swap_item = 56; }
if (ini_read_real('Items', '57', 57) == argument1) { swap_item = 57; }
if (ini_read_real('Items', '60', 60) == argument1) { swap_item = 60; }
if (ini_read_real('Items', '100', 100) == argument1) { swap_item = 100; }
if (ini_read_real('Items', '101', 101) == argument1) { swap_item = 101; }
if (ini_read_real('Items', '102', 102) == argument1) { swap_item = 102; }
if (ini_read_real('Items', '104', 104) == argument1) { swap_item = 104; }
if (ini_read_real('Items', '105', 105) == argument1) { swap_item = 105; }
if (ini_read_real('Items', '106', 106) == argument1) { swap_item = 106; }
if (ini_read_real('Items', '107', 107) == argument1) { swap_item = 107; }
if (ini_read_real('Items', '109', 109) == argument1) { swap_item = 109; }
if (ini_read_real('Items', '111', 111) == argument1) { swap_item = 111; }
if (ini_read_real('Items', '150', 150) == argument1) { swap_item = 150; }
if (ini_read_real('Items', '151', 151) == argument1) { swap_item = 151; }
if (ini_read_real('Items', '152', 152) == argument1) { swap_item = 152; }
if (ini_read_real('Items', '153', 153) == argument1) { swap_item = 153; }
if (ini_read_real('Items', '154', 154) == argument1) { swap_item = 154; }
if (ini_read_real('Items', '155', 155) == argument1) { swap_item = 155; }
if (ini_read_real('Items', '156', 156) == argument1) { swap_item = 156; }
if (ini_read_real('Items', '159', 159) == argument1) { swap_item = 159; }
if (ini_read_real('Items', '161', 161) == argument1) { swap_item = 161; }
if (ini_read_real('Items', '163', 163) == argument1) { swap_item = 163; }
if (ini_read_real('Items', '202', 202) == argument1) { swap_item = 202; }
if (ini_read_real('Items', '203', 203) == argument1) { swap_item = 203; }
if (ini_read_real('Items', '204', 204) == argument1) { swap_item = 204; }
if (ini_read_real('Items', '205', 205) == argument1) { swap_item = 205; }
if (ini_read_real('Items', '208', 208) == argument1) { swap_item = 208; }
if (ini_read_real('Items', '210', 210) == argument1) { swap_item = 210; }
if (ini_read_real('Items', '211', 211) == argument1) { swap_item = 211; }
if (ini_read_real('Items', '214', 214) == argument1) { swap_item = 214; }
if (ini_read_real('Items', '250', 250) == argument1) { swap_item = 250; }
if (ini_read_real('Items', '252', 252) == argument1) { swap_item = 252; }
if (ini_read_real('Items', '255', 255) == argument1) { swap_item = 255; }
if (ini_read_real('Items', '257', 257) == argument1) { swap_item = 257; }
if (ini_read_real('Items', '259', 259) == argument1) { swap_item = 259; }
if (ini_read_real('Items', '303', 303) == argument1) { swap_item = 303; }
if (ini_read_real('Items', '304', 304) == argument1) { swap_item = 304; }
if (ini_read_real('Items', '307', 307) == argument1) { swap_item = 307; }
if (ini_read_real('Items', '308', 308) == argument1) { swap_item = 308; }
if (ini_read_real('Items', '309', 309) == argument1) { swap_item = 309; }
//Super Missiles
if (ini_read_real('Items', '51', 51) == argument1) { swap_item = 51; }
if (ini_read_real('Items', '110', 110) == argument1) { swap_item = 110; }
if (ini_read_real('Items', '162', 162) == argument1) { swap_item = 162; }
if (ini_read_real('Items', '206', 206) == argument1) { swap_item = 206; }
if (ini_read_real('Items', '207', 207) == argument1) { swap_item = 207; }
if (ini_read_real('Items', '209', 209) == argument1) { swap_item = 209; }
if (ini_read_real('Items', '215', 215) == argument1) { swap_item = 215; }
if (ini_read_real('Items', '256', 256) == argument1) { swap_item = 256; }
if (ini_read_real('Items', '300', 300) == argument1) { swap_item = 300; }
if (ini_read_real('Items', '305', 305) == argument1) { swap_item = 305; }
//Energy Tanks
if (ini_read_real('Items', '50', 50) == argument1) { swap_item = 50; }
if (ini_read_real('Items', '103', 103) == argument1) { swap_item = 103; }
if (ini_read_real('Items', '108', 108) == argument1) { swap_item = 108; }
if (ini_read_real('Items', '157', 157) == argument1) { swap_item = 157; }
if (ini_read_real('Items', '158', 158) == argument1) { swap_item = 158; }
if (ini_read_real('Items', '200', 200) == argument1) { swap_item = 200; }
if (ini_read_real('Items', '201', 201) == argument1) { swap_item = 201; }
if (ini_read_real('Items', '251', 251) == argument1) { swap_item = 251; }
if (ini_read_real('Items', '254', 254) == argument1) { swap_item = 254; }
if (ini_read_real('Items', '306', 306) == argument1) { swap_item = 306; }
//Power Bombs
if (ini_read_real('Items', '58', 58) == argument1) { swap_item = 58; }
if (ini_read_real('Items', '59', 59) == argument1) { swap_item = 59; }
if (ini_read_real('Items', '112', 112) == argument1) { swap_item = 112; }
if (ini_read_real('Items', '160', 160) == argument1) { swap_item = 160; }
if (ini_read_real('Items', '212', 212) == argument1) { swap_item = 212; }
if (ini_read_real('Items', '213', 213) == argument1) { swap_item = 213; }
if (ini_read_real('Items', '253', 253) == argument1) { swap_item = 253; }
if (ini_read_real('Items', '258', 258) == argument1) { swap_item = 258; }
if (ini_read_real('Items', '301', 301) == argument1) { swap_item = 301; }
if (ini_read_real('Items', '302', 302) == argument1) { swap_item = 302; }

ini_close();
if (file_exists(working_directory + "\swap.ini")) file_delete(working_directory + "\swap.ini");
if (swap_item == 1) {  return argument0; }

scr_fixitem_switch(argument1, argument0);
scr_fixitem_switch(swap_location, swap_item);

//These settings are saved when saving game.


