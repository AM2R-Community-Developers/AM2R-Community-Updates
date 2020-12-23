/// goto_monster()
met = get_integer("Goto Monster...", 0);
global.metdead[met] = 0;
switch (met) {
    case 0:
        targetx = 624;
        targety = 128;
        targetroom = rm_a0h05;
        break;
    case 1:
        targetx = 16;
        targety = 128;
        targetroom = rm_a1h06;
        break;
    case 2:
        targetx = 16;
        targety = 160;
        targetroom = rm_a1b03;
        break;
    case 3:
        targetx = 1264;
        targety = 160;
        targetroom = rm_a1b04;
        break;
    case 4:
        targetx = 16;
        targety = 160;
        targetroom = rm_a1b05;
        break;
    case 5:
        targetx = 1264;
        targety = 160;
        targetroom = rm_a2h01;
        break;
    case 6:
        targetx = 16;
        targety = 208;
        targetroom = rm_a2a09;
        break;
    case 7:
        targetx = 16;
        targety = 192;
        targetroom = rm_a2a05;
        break;
    case 8:
        targetx = 624;
        targety = 128;
        targetroom = rm_a2h03;
        break;
    case 9:
        targetx = 16;
        targety = 144;
        targetroom = rm_a2c04;
        break;
    case 10:
        targetx = 1584;
        targety = 624;
        targetroom = rm_a2c06;
        break;
    case 11:
        targetx = 16;
        targety = 384;
        targetroom = rm_a2c08;
        break;
    case 12:
        targetx = 602;
        targety = 144;
        targetroom = rm_a2c07;
        global.metdead[11] = 1;
        break;
} // switch (met)
global.targetx = targetx;
global.targety = targety;
global.camstartx = targetx;
global.camstarty = targety;
room_goto(targetroom);
