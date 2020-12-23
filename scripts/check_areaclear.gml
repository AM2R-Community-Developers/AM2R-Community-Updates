/// check_areaclear()
if (global.lavastate == 0) {
    if (global.metdead[0] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 1;
    }
}
if (global.lavastate == 1) {
    if (global.metdead[1] == 1 && global.metdead[2] == 1 && global.metdead[3] == 1 && global.metdead[4] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 2;
        //global.event[50] = 1;
    }
}
if (global.lavastate == 2) {
    if (global.metdead[5] == 1 && global.metdead[6] == 1 && global.metdead[7] == 1 && global.metdead[8] == 1 && global.metdead[9] == 1 && global.metdead[10] == 1 && global.metdead[11] == 1 && global.metdead[12] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 3;
    }
}
if (global.lavastate == 3) {
    if (global.metdead[13] == 1 && global.metdead[14] == 1 && global.metdead[15] == 1 && global.metdead[16] == 1 && global.metdead[17] == 1 && global.metdead[18] == 1 && global.metdead[19] == 1 && global.metdead[20] == 1 && global.metdead[21] == 1 && global.metdead[22] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 4;
    }
}
if (global.lavastate == 4) {
    if (global.metdead[23] == 1 && global.metdead[24] == 1) {
        instance_create(0, 0, oBigQuake);
        global.timeofday = 1;
        global.lavastate = 5;
    }
}
if (global.lavastate == 5) {
    if (global.metdead[25] == 1 && global.metdead[26] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 6;
    }
}
if (global.lavastate == 6) {
    if (global.metdead[27] == 1 && global.metdead[28] == 1 && global.metdead[29] == 1 && global.metdead[30] == 1 && global.metdead[31] == 1 && global.metdead[32] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 7;
    }
}
if (global.lavastate == 7) {
    //if (global.metdead[33] == 1 && global.metdead[34] == 1 && global.metdead[35] == 1 && global.metdead[36] == 1 && global.metdead[37] == 1 && global.metdead[38] == 1 && global.metdead[39] == 1 && global.metdead[40] == 1) {
    //This has been changed in order to make NewGame+ work correctly. Lava State needs to start at 7.
    if (global.metdead[0] == 1 && global.metdead[1] == 1 && global.metdead[2] == 1 && global.metdead[3] == 1 && global.metdead[4] == 1 && global.metdead[5] == 1 && global.metdead[6] == 1 && global.metdead[7] == 1 && global.metdead[8] == 1 && global.metdead[9] == 1 && global.metdead[10] == 1 && global.metdead[11] == 1 && global.metdead[12] == 1 && global.metdead[13] == 1 && global.metdead[14] == 1 && global.metdead[15] == 1 && global.metdead[16] == 1 && global.metdead[17] == 1 && global.metdead[18] == 1 && global.metdead[19] == 1 && global.metdead[20] == 1 && global.metdead[21] == 1 && global.metdead[22] == 1 && global.metdead[23] == 1 && global.metdead[24] == 1 && global.metdead[25] == 1 && global.metdead[26] == 1 && global.metdead[27] == 1 && global.metdead[28] == 1 && global.metdead[29] == 1 && global.metdead[30] == 1 && global.metdead[31] == 1 && global.metdead[32] == 1 && global.metdead[33] == 1 && global.metdead[34] == 1 && global.metdead[35] == 1 && global.metdead[36] == 1 && global.metdead[37] == 1 && global.metdead[38] == 1 && global.metdead[39] == 1 && global.metdead[40] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 8;
    }
}
if (global.lavastate == 8) {
    if (global.metdead[41] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 9;
    }
}
if (global.lavastate == 9) {
    if (global.metdead[42] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 10;
    }
}
if (global.lavastate == 10) {
    if (global.metdead[43] == 1 && global.metdead[44] == 1 && global.metdead[45] == 1) {
        instance_create(0, 0, oBigQuake);
        global.lavastate = 11;
    }
}
