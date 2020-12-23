/// load_bgset(bg_id)
if (argument0 == 1) {
    init_bg(5+oControl.widescreen);
    bgid[0] = bgA0Sky;
    if (oControl.widescreen) bgid[0] = bgA0Sky_wide;
    xratio[0] = 0.97;
    yratio[0] = 0.75;
    bgid[1] = bgA0Mountain;
    xratio[1] = 0.75;
    yratio[1] = 0.5;
    xoff[1] = 1128;
    yoff[1] = 480;
    tile[1] = 0;
    bgid[2] = bgA0Mountain;
    xratio[2] = 0.75;
    yratio[2] = 0.5;
    xoff[2] = 888;
    yoff[2] = 598;
    tile[2] = 0;
    bgid[3] = bgA0Mountain;
    xratio[3] = 0.75;
    yratio[3] = 0.5;
    xoff[3] = 240;
    yoff[3] = 480;
    tile[3] = 0;
    xscale[3] = -1;
    bgid[4] = bgA0Mountain;
    xratio[4] = 0.75;
    yratio[4] = 0.5;
    xoff[4] = 480;
    yoff[4] = 598;
    tile[4] = 0;
    xscale[4] = -1;
    if (oControl.widescreen) {
        bgid[5] = bgA0Mountain;
        xratio[5] = 0.75;
        yratio[5] = 0.5;
        xoff[5] = 1368;
        yoff[5] = 362; // I hope???
        tile[5] = 0;
    }
} // if (argument0 == 1)
if (argument0 == 2) {
    init_bg(3);
    bgid[0] = bgA0Sky;
    if (oControl.widescreen) bgid[0] = bgA0Sky_wide;
    xratio[0] = 0.97;
    yratio[0] = 0.911; // altered
    yoff[0] = -220;
    bgid[1] = bgA0Mountain;
    xratio[1] = 0.5;
    yratio[1] = 0.5;
    xoff[1] = 240;
    yoff[1] = -20;
    tile[1] = 0;
    xscale[1] = -1;
    bgid[2] = bgA0Mountain;
    xratio[2] = 0.5;
    yratio[2] = 0.5;
    xoff[2] = 479;
    yoff[2] = 98;
    tile[2] = 0;
    xscale[2] = -1;
}
if (argument0 == 3) {
    init_bg(2+oControl.widescreen);
    bgid[0] = bgA0Sky;
    if (oControl.widescreen) bgid[0] = bgA0Sky_wide;
    xratio[0] = 0.97;
    yratio[0] = 0.911; // altered
    yoff[0] = -220;
    bgid[1] = bgA0Mountain;
    xratio[1] = 0.5;
    yratio[1] = 0.75;
    xoff[1] = 32;
    yoff[1] = 100;
    tile[1] = 0;
    if (oControl.widescreen) {
        bgid[2] = bgA0Mountain;
        xratio[2] = 0.5;
        yratio[2] = 0.75;
        xoff[2] = 272;
        yoff[2] = -18; // here's hopin'
        tile[2] = 0;
    }
}
if (argument0 == 4) {
    init_bg(2);
    bgid[0] = bgA0Cave1BG;
    if(room == rm_a7c05) bgid[0] = bgA7CaveBG;
    xratio[0] = 0.6;
    yratio[0] = 0.6;
    yoff[0] = 16;
    bgid[1] = bgA0Cave1FG;
    if(room == rm_a7c05) bgid[1] = bgA7CaveFG; 
    xratio[1] = 0.3;
    yratio[1] = 0.3;
    xoff[1] = 64;
    yoff[1] = 30;
}
if (argument0 == 5) {
    init_bg(2);
    bgid[0] = bgA0Cave2BG;
    if(room == rm_a2h02) bgid[0] = bgA2WaterfallBG;
    xratio[0] = 0.6;
    yratio[0] = 0.6;
    yoff[0] = 16;
    bgid[1] = bgA0Cave2FG;
    xratio[1] = 0.3;
    yratio[1] = 0.3;
    xoff[1] = 64;
    yoff[1] = 30;
}
if (argument0 == 6) {
    init_bg(2);
    bgid[0] = bgA0Cave3BG;
    xratio[0] = 0.6;
    yratio[0] = 0.6;
    yoff[0] = 16;
    bgid[1] = bgA0Cave3FG;
    xratio[1] = 0.3;
    yratio[1] = 0.3;
    xoff[1] = 64;
    yoff[1] = 30;
}
if (argument0 == 7) {
    init_bg(2);
    bgid[0] = bgA0Cave4BG;
    xratio[0] = 0.6;
    yratio[0] = 0.6;
    yoff[0] = 16;
    bgid[1] = bgA0Cave4FG;
    xratio[1] = 0.3;
    yratio[1] = 0.3;
    xoff[1] = 64;
    yoff[1] = 30;
}
if (argument0 == 10) {
    init_bg(1);
    bgid[0] = bgA1Brick;
    xratio[0] = 0.25;
    yratio[0] = 0.25;
}
if (argument0 == 11) {
    init_bg(3);
    bgid[0] = bgA0Sky;
    xratio[0] = 0.97;
    yratio[0] = 0.75;
    yoff[0] = -212;
    bgid[1] = bgA1Canyon;
    xratio[1] = 0.75;
    yratio[1] = 0.75;
    bgid[2] = bgA0Cave1FG;
    xratio[2] = 0.3;
    yratio[2] = 0.3;
}
if (argument0 == 12) {
    init_bg(1);
    bgid[0] = bgA1Save;
    tile[0] = 0;
}
if (argument0 == 13) {
    init_bg(1);
    bgid[0] = bgA1Temple;
    xratio[0] = 0.25;
    yratio[0] = 0.25;
}
if (argument0 == 14) {
    init_bg(1);
    bgid[0] = bgA1Breed;
    xratio[0] = 0.4;
    yratio[0] = 0.4;
}
if (argument0 == 20) {
    init_bg(1);
    bgid[0] = bgA2Brick;
    xratio[0] = 0.25;
    yratio[0] = 0.25;
}
if (argument0 == 21) {
    init_bg(1);
    bgid[0] = bgA2PipesH;
    xratio[0] = 0.3;
    yratio[0] = 0.3;
    yoff[0] = 40;
}
if (argument0 == 22) {
    init_bg(1);
    bgid[0] = bgA2PipesV;
    xratio[0] = 0.3;
    yratio[0] = 0.3;
}
if (argument0 == 23) {
    init_bg(1);
    bgid[0] = bgA2Breed;
    xratio[0] = 0.6;
    yratio[0] = 0.6;
}
if (argument0 == 30) {
    init_bg(1);
    bgid[0] = bgA3Brick;
    xratio[0] = 0.25;
    yratio[0] = 0.25;
}
if (argument0 == 31) {
    init_bg(2);
    bgid[0] = bgA3FactoryBG;
    xratio[0] = 0.9;
    yratio[0] = 1;
    yoff[0] = 16;
    bgid[1] = bgA3Columns;
    xratio[1] = 0.7;
    yratio[1] = 0.7;
}
if (argument0 == 32) {
    init_bg(3);
    bgid[0] = bgA3FactoryBG;
    xratio[0] = 0.9;
    yratio[0] = 1;
    yoff[0] = 16;
    bgid[1] = bgA3Columns;
    xratio[1] = 0.7;
    yratio[1] = 0.7;
    bgid[2] = bgA3FactoryFG;
    xratio[2] = 0.4;
    yratio[2] = 0.4;
    yoff[2] = 16;
}
if (argument0 == 35) {
    init_bg(1);
    bgid[0] = bgA3LabCave;
    xratio[0] = 0.25;
    yratio[0] = 0.25;
}
if (argument0 == 36) {
    init_bg(1);
    bgid[0] = bgA3MinesCave;
    xratio[0] = 0.4;
    yratio[0] = 0.4;
}
if (argument0 == 40) {
    init_bg(1);
    bgid[0] = bgA4Tower;
    xratio[0] = 0.25;
    yratio[0] = 0.25;
}
if (argument0 == 41) {
    init_bg(5);
    bgid[0] = bgA4TowerL1;
    xratio[0] = 0.15;
    yratio[0] = 0.15;
    bgid[1] = bgA4TowerL2;
    xratio[1] = 0.3;
    yratio[1] = 0.3;
    bgid[2] = bgA4TowerL3;
    xratio[2] = 0.5;
    yratio[2] = 0.5;
    bgid[3] = bgA4TowerL4;
    xratio[3] = 0.7;
    yratio[3] = 0.7;
    bgid[1] = bgA4TowerL5;
    xratio[1] = 0.8;
    yratio[1] = 0.8;
}
if (argument0 == 42) {
    init_bg(5);
    bgid[0] = bgA4TowerL1;
    xratio[0] = 0.15;
    yratio[0] = 0.15;
    xoff[0] = 240;
    bgid[1] = bgA4TowerL2;
    xratio[1] = 0.3;
    yratio[1] = 0.3;
    xoff[1] = 96;
    bgid[2] = bgA4TowerL3;
    xratio[2] = 0.5;
    yratio[2] = 0.5;
    xoff[2] = -16;
    bgid[3] = bgA4TowerL4;
    xratio[3] = 0.7;
    yratio[3] = 0.7;
    xoff[3] = -96;
    bgid[1] = bgA4TowerL5;
    xratio[1] = 0.8;
    yratio[1] = 0.8;
    xoff[1] = -224;
}
if (argument0 == 50) {
    init_bg(1);
    bgid[0] = bgA5Vertical;
    xratio[0] = 0.3;
    yratio[0] = 0.3;
}
if (argument0 == 51) {
    init_bg(1);
    bgid[0] = bgA5Outside;
    xratio[0] = 0.9;
    yratio[0] = 0.95;
}
if (argument0 == 60) {
    init_bg(1);
    bgid[0] = bgA6Cave;
    xratio[0] = 0.3;
    yratio[0] = 0.3;
    yoff[0] = 48;
}
if (argument0 == 61) {
    init_bg(1);
    bgid[0] = bgA1Breed;
    xratio[0] = 0.4;
    yratio[0] = 0.4;
}
if (argument0 == 70) {
    init_bg(2);
    bgid[0] = bgA7CaveBG;
    xratio[0] = 0.6;
    yratio[0] = 0.6;
    yoff[0] = 16;
    bgid[1] = bgA7CaveFG;
    xratio[1] = 0.3;
    yratio[1] = 0.3;
    xoff[1] = 64;
    yoff[1] = 30;
}
if (argument0 == 71) {
    init_bg(1);
    bgid[0] = bgA7Lab;
    xratio[0] = 0.5;
    yratio[0] = 0.5;
}
if (argument0 == 72) {
    init_bg(1);
    bgid[0] = bgA7Cave;
    xratio[0] = 0.87;
    yratio[0] = 0.86;
    tile[0] = 0;
}
if (argument0 == 80) {
    init_bg(2+oControl.widescreen);
    bgid[0] = bgA0SkyTwilight;
    xratio[0] = 0.98;
    yratio[0] = 0.9;
    if (oControl.widescreen) {
        bgid[0] = bgA0SkyTwilight_wide;
        xratio[0] = 0.99;
    }
    yoff[0] = -140;
    bgid[1] = bgA8DropShip;
    xratio[1] = 0.75;
    yratio[1] = 0.75;
    xoff[1] = 1947 + (oControl.widescreen*68);
    yoff[1] = 95;
    tile[1] = 0;
    /*if (oControl.widescreen) {
        bgid[2] = bgA8DropShip;
        xratio[2] = 0.75;
        yratio[2] = 0.75;
        xoff[2] = 1947+(290*2);
        yoff[2] = 95;
        tile[2] = 0;
        xscale[2] = -1;
    }*/
}
if (argument0 == 81) {
    init_bg(1);
    bgid[0] = bgA8Corridor1;
    xratio[0] = 0.2;
    yratio[0] = 0.2;
}
if (argument0 == 82) {
    init_bg(1);
    bgid[0] = bgA8Corridor2;
    xratio[0] = 0.2;
    yratio[0] = 0.2;
    yoff[0] = 48;
}
if (argument0 == 83) {
    init_bg(1);
    bgid[0] = bgA8Corridor3;
    xratio[0] = 0.2;
    yratio[0] = 0.2;
}
if (argument0 == 84) {
    init_bg(4);
    bgid[0] = bgA8Elevator;
    xratio[0] = 0;
    yratio[0] = 0;
    tile[0] = 0;
    xoff[0] = 160;
    yoff[0] = 48;
    bgid[1] = bgA8Elevator;
    xratio[1] = 0;
    yratio[1] = 0;
    tile[1] = 0;
    xoff[1] = 160;
    yoff[1] = 48;
    xscale[1] = -1;
    bgid[2] = bgA8Elevator;
    xratio[2] = 0;
    yratio[2] = 0;
    tile[2] = 0;
    xoff[2] = 160;
    yoff[2] = 320;
    bgid[3] = bgA8Elevator;
    xratio[3] = 0;
    yratio[3] = 0;
    tile[3] = 0;
    xoff[3] = 160;
    yoff[3] = 320;
    xscale[3] = -1;
} // if (argument0 == 84)
if (argument0 == 85) {
    init_bg(4);
    bgid[0] = bgA8Elevator;
    xratio[0] = 0;
    yratio[0] = 0;
    tile[0] = 0;
    xoff[0] = 160;
    yoff[0] = 64;
    bgid[1] = bgA8Elevator;
    xratio[1] = 0;
    yratio[1] = 0;
    tile[1] = 0;
    xoff[1] = 160;
    yoff[1] = 64;
    xscale[1] = -1;
    bgid[2] = bgA8Elevator;
    xratio[2] = 0;
    yratio[2] = 0;
    tile[2] = 0;
    xoff[2] = 160;
    yoff[2] = 560;
    bgid[3] = bgA8Elevator;
    xratio[3] = 0;
    yratio[3] = 0;
    tile[3] = 0;
    xoff[3] = 160;
    yoff[3] = 560;
    xscale[3] = -1;
} // if (argument0 == 85)
if (argument0 == 86) {
    init_bg(1);
    bgid[0] = bgA8LoungeWindows;
    xratio[0] = 0.2;
    yratio[0] = 0.2;
    xoff[0] = 160;
    yoff[0] = 70;
}
if (argument0 == 87) {
    init_bg(1);
    bgid[0] = bgA0SkyTwilight;
    if (oControl.widescreen) {
        bgid[0] = bgA0SkyTwilight_wide;
    }
    xratio[0] = 0.98;
    yratio[0] = 0.9;
    yoff[0] = -240;
}
if (argument0 == 88) {
    init_bg(1);
    bgid[0] = bgA8Lab;
    xratio[0] = 0.5;
    yratio[0] = 0.5;
    xoff[0] = 0;
    yoff[0] = 0;
}
