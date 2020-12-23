/// shoot_missile(direction)
if (global.currentweapon == 1 && global.missiles > 0 || global.currentweapon == 2 && global.smissiles > 0) {
    msl = instance_create(x + aspr2x, y + aspr2y, oMissile);
    msl.direction = argument0;
    msl.speed = 6.4;
    msl.image_angle = argument0;
    sfx_play(sndFireMissile);
    with (msl) beam_offset(4, direction);
    if (argument0 == 180) {
        msl.x += 4;
        if (state != GRIP) msl.y -= 1;
    }
    if (argument0 == 0) msl.x -= 4;
    if (argument0 == 90) {
        msl.y += 4;
        if (facing == LEFT) msl.x += 1;
    }
    msl.smissile = global.currentweapon == 2;
    if (global.currentweapon == 1) {
        global.missiles -= 1;
        msl.sprite_index = sMissile;
        msl.alarm[0] = 1;
        msl.damage = 20;
        nofire = 10;
    }
    if (global.currentweapon == 2) {
        global.smissiles -= 1;
        msl.sprite_index = sSMissile;
        msl.alarm[0] = 1;
        msl.damage = 100;
        PlaySoundMono(sndFlyby);
        nofire = 20;
    }
    with (msl) {
        trail = instance_create(x, y, oMissileTrail);
        trail.direction = direction;
        trail.smissile = smissile;
        trail.fadein_speed = 0.04;
        if (global.currentweapon == 2) {
            trail.sprite_index = sSMissileTrail1;
            trail.fadein_speed = 0.1;
        }
    }
} // if (global.currentweapon == 1 && global.missiles > 0 || global.currentweapon == 2 && global.smissiles > 0)
if (global.currentweapon == 2 && global.smissiles == 0) global.currentweapon = 1;
if (global.currentweapon == 1 && global.missiles == 0) global.currentweapon = 0;
