/// load_character_vars()
global.morphball = 1;
global.jumpball = 0;
global.powergrip = 1;
global.spacejump = 0;
global.screwattack = 0;
global.hijump = 0;
global.spiderball = 0;
global.speedbooster = 0;
global.bomb = 0;
global.ibeam = 0;
global.wbeam = 0;
global.pbeam = 0;
global.sbeam = 0;
global.cbeam = 0;
global.missiles = 30;
global.missiles = oControl.mod_Mstartingcount;
global.smissiles = 0;
global.pbombs = 0;
global.maxmissiles = 30;
global.maxmissiles = oControl.mod_Mstartingcount;
global.maxsmissiles = 0;
global.maxpbombs = 0;
global.currentweapon = 0;
global.currentsuit = 0;
global.playerhealth = 99;
global.maxhealth = 99;
global.etanks = 0;
global.mtanks = 0;
global.stanks = 0;
global.ptanks = 0;
global.lavastate = 0;
global.timeofday = 0;
i = 100;
repeat (100) {
    i -= 1;
    global.metdead[i] = 0;
}
i = 350;
repeat (350) {
    i -= 1;
    global.event[i] = 0;
}
global.save_room = initroom;
global.monstersleft = 55;
global.monstersarea = 1;
global.progress = 0;
global.gametime = 0;
global.deaths = 0;
global.kills = 0;
global.mapmarker = 0;
global.mapmarkerx = 0;
global.mapmarkery = 0;
global.itemstaken = 0;
i = 350;
repeat (350) {
    i -= 1;
    global.item[i] = 0;
}
global.item[1] = 1;
reset_logs_list();
reset_hints();
