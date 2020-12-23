/// set_start_location()
if (global.save_room == initroom) {
    global.start_room = rm_a0h01;
    global.save_x = 3408;
    global.save_y = 1184;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == titleroom) {
    global.start_room = rm_a0h03a;
    global.save_x = 160;
    global.save_y = 144;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == gameoverroom) {
    global.start_room = rm_a0h04c;
    global.save_x = 160;
    global.save_y = 128;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == demoendroom) {
    global.start_room = rm_a1h02;
    global.save_x = 160;
    global.save_y = 160;
    global.currentbgm = sndSpaceJump;
}
if (global.save_room == rm_credits) {
    global.start_room = rm_a1a01;
    global.save_x = 160;
    global.save_y = 176;
    global.currentbgm = sndScrewAttack;
}
if (global.save_room == rm_gallery) {
    global.start_room = rm_a1h07;
    global.save_x = 160;
    global.save_y = 144;
    global.currentbgm = sndScrewAttack;
}
if (global.save_room == rm_options) {
    global.start_room = rm_a2a01A;
    global.save_x = 160;
    global.save_y = 176;
    global.currentbgm = sndWallJump;
}
if (global.save_room == optionsroom) {
    global.start_room = rm_a2c02;
    global.save_x = 160;
    global.save_y = 144;
    global.currentbgm = sndLand;
}
if (global.save_room == quitroom) {
    global.start_room = rm_a2a03;
    global.save_x = 480;
    global.save_y = 160;
    global.currentbgm = sndWallJump;
}
if (global.save_room == subscreenroom) {
    global.start_room = rm_a3h01;
    global.save_x = 160;
    global.save_y = 128;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == itemroom) {
    global.start_room = rm_a3a02;
    global.save_x = 80;
    global.save_y = 176;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == maproom) {
    global.start_room = rm_a3a17;
    global.save_x = 160;
    global.save_y = 144;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == testroom) {
    global.start_room = rm_a0h19;
    global.save_x = 160;
    global.save_y = 160;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == introroom) {
    global.start_room = rm_a0h26;
    global.save_x = 128;
    global.save_y = 176;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == gameintroroom) {
    global.start_room = rm_a4a02;
    global.save_x = 160;
    global.save_y = 144;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_loading) {
    global.start_room = rm_a4h14;
    global.save_x = 192;
    global.save_y = 160;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_subscreen) {
    global.start_room = rm_a4b12;
    global.save_x = 160;
    global.save_y = 160;
    global.currentbgm = sndBallBounce;
    if (global.event[203] > 0) {
        global.start_room = rm_a4h14;
        global.save_x = 192;
        global.save_y = 160;
        global.currentbgm = sndBallBounce;
    }
}
if (global.save_room == rm_transition) {
    global.start_room = rm_a5c03;
    global.save_x = 160;
    global.save_y = 144;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_death) {
    global.start_room = rm_a5c19;
    global.save_x = 128;
    global.save_y = 160;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_controller) {
    global.start_room = rm_a5c28;
    global.save_x = 160;
    global.save_y = 144;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_score) {
    global.start_room = rm_a0h33;
    global.save_x = 160;
    global.save_y = 112; //128 pre-1.4.4 A6 layout change
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_a0h01) {
    global.start_room = rm_a6a15;
    global.save_x = 112;
    global.save_y = 128;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_a0h02) {
    global.start_room = rm_a6b06;
    global.save_x = 224;
    global.save_y = 160;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_a0h02a) {
    global.start_room = rm_a6b16;
    global.save_x = 96;
    global.save_y = 176;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_a0h03) {
    global.start_room = rm_a7b02A;
    global.save_x = 160;
    global.save_y = 144;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_a0h03a) {
    global.start_room = rm_a8a14;
    global.save_x = 160;
    global.save_y = 208;
    global.currentbgm = sndBallBounce;
}
if (global.save_room == rm_a0h03b) { // 1.4.4 don't kill me pls
    global.start_room = rm_a6a10B;
    global.save_x = 240;
    global.save_y = 112;
    global.currentbgm = sndBallBounce;
}
