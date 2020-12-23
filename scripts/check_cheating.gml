/// check_cheating()
if (global.ingame) {
    if (global.spacejump != 0) c_id = 1;
    if (global.screwattack != 0) c_id = 1;
    if (global.speedbooster != 0) c_id = 1;
    if (global.pbeam != 0) c_id = 1;
    if (global.sbeam != 0) c_id = 1;
    if (global.smissiles != 0) c_id = 1;
    if (global.pbombs != 0) c_id = 1;
}
if (c_id != 0) game_end();
