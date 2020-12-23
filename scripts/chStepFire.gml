/// chStepFire()
if (kFire && kFirePushedSteps == 0 && nofire == 0 && turning == 0 && morphing == 0 && unmorphing == 0 && walljumping == 0 && monster_drain == 0 && !instance_exists(oEMPNoise)) {
    nofire = 6;
    idle = 0;
    chStepSetSprite();
    if (state == RUNNING) firing = 60;
    if (state == STANDING || state == RUNNING || state == DUCKING || state == JUMPING && vjump == 1 || state == GRIP && (facing == RIGHT && aimdirection != 0 || facing == LEFT && aimdirection != 1) || state == GRABBEDQUEEN && image_index == 2) {
        if (global.opmslstyle == 0 && armmsl == 0 || global.opmslstyle == 1 && (global.currentweapon == 0 || global.currentweapon == 3)) {
            if (aimdirection == 0) shoot_beam(0);
            if (aimdirection == 1) shoot_beam(180);
            if (aimdirection == 2) shoot_beam(45);
            if (aimdirection == 3) shoot_beam(135);
            if (aimdirection == 4) shoot_beam(315);
            if (aimdirection == 5) shoot_beam(225);
            if (aimdirection == 6) shoot_beam(90);
            if (aimdirection == 7) shoot_beam(270);
        }
        if (global.opmslstyle == 0 && armmsl == 1 || global.opmslstyle == 1 && (global.currentweapon == 1 || global.currentweapon == 2)) {
            if (aimdirection == 0) shoot_missile(0);
            if (aimdirection == 1) shoot_missile(180);
            if (aimdirection == 2) shoot_missile(45);
            if (aimdirection == 3) shoot_missile(135);
            if (aimdirection == 4) shoot_missile(315);
            if (aimdirection == 5) shoot_missile(225);
            if (aimdirection == 6) shoot_missile(90);
            if (aimdirection == 7) shoot_missile(270);
        }
    }
} // if (kFire && kFirePushedSteps == 0 && nofire == 0 && turning == 0 && morphing == 0 && unmorphing == 0 && walljumping == 0 && monster_drain == 0 && !instance_exists(oEMPNoise))
if (kFire && kFirePushedSteps == 1 && (state == 23 || state == 24 || state == 27 || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY) && !instance_exists(oEMPNoise)) {
    if (global.bomb == 1 && instance_number(oBomb) < 3 && (global.opmslstyle == 0 && armmsl == 0 || global.opmslstyle == 1 && global.currentweapon < 3)) {
        instance_create(x, y - 5, oBomb);
        sfx_play(sndBombSet);
    }
    if ((global.opmslstyle == 0 && armmsl == 1 || global.opmslstyle == 1 && global.currentweapon == 3) && global.pbombs > 0 && instance_number(oPBomb) == 0 && instance_number(oPBombExpl) == 0 && instance_number(oQueenFinalExplosion) == 0 && state != GRABBEDQUEENMORPH && !(state == GRABBEDQUEENBELLY && distance_to_point(oQueenFront.x+81,y) > 4)) { //1.4.3 changed to check for distance to Queen stomach
        bmb = instance_create(x, y - 5, oPBomb);
        if (state == GRABBEDQUEENBELLY) bmb.special = 1;
        global.pbombs -= 1;
        if (global.currentweapon == 3 && global.pbombs == 0) global.currentweapon = 0;
    }
}
if (kFire && kFirePushedSteps > 15 && chargebeam < 1 && nofire == 0 && sjball == 0 && state != SJSTART && state != SUPERJUMP && state != SJEND && global.cbeam == 1 && monster_drain == 0 && !instance_exists(oEMPNoise)) chargebeam += 0.02;
if (chargebeam > 0) {
    idle = 0;
    if (facing == 0 || state == IDLE || state == SAVING || state == SAVINGSHIP || state == SAVINGFX || state == SAVINGSHIPFX || state == HURT || state == KNOCKBACK1 || state == KNOCKBACK1_LAND || state == KNOCKBACK2 || state == KNOCKBACK2_LAND || state == GRABBEDGAMMA || state == WATERJET || state == LOCKEDBALL || state == RECOVER || state == A4EXPL || state == ELEVATOR || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY || state == GRABBEDQUEEN && image_index < 2 || global.opmslstyle == 0 && armmsl == 1 || global.opmslstyle == 1 && (global.currentweapon == 1 || global.currentweapon == 2) || global.cbeam == 0) chargebeam = 0;
    if (!kFire) {
        charge_beam_fire();
        if (turning == 0 && morphing == 0 && unmorphing == 0 && walljumping == 0 && state != CLIMBING && state != SJSTART && state != SUPERJUMP && state != SJEND && state != BRAKING) chargebeam = 0;
    }
    if (state == BALL || state == AIRBALL || state == SPIDERBALL) {
        if (chargebeam >= 1 && global.bomb == 1) instance_create(x, y - 5, oChargeBomb);
        chargebeam = 0;
    }
    if (state == BALL || state == AIRBALL || state == SPIDERBALL) chargebeam = 0;
    if (state == RUNNING) firing = 60;
}
if (instance_number(oChargeBeamSpark1) == 0 && chargebeam > 0) instance_create(x + aspr2x, y + aspr2y, oChargeBeamSpark1);
damage = 15;
if (global.wbeam) damage *= 1.5;
if (global.ibeam) damage *= 1.5;
if (global.sbeam) damage *= 1.5;
if (global.pbeam) damage *= 1.5;
