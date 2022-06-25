/// characterStepEvent()
var jump_vel;
if (global.enablecontrol) chStepControl();
if (global.movingobj) chStepMovingCheck();
if (isCollisionBottom(1) || isCollisionPlatformBottom(1)) {
    collision_bottom = 1;
} else collision_bottom = 0;
SetSpinJumpSound();
if (state == STANDING || state == RUNNING) {
    idle += 1;
    if (state == RUNNING && speedboost) {
        if (facing == RIGHT && (kRight == 0 || kLeft > 0) || facing == LEFT && (kLeft == 0 || kRight > 0)) {
            state = BRAKING;
            statetime = 0;
            dash = 0;
            speedboost = 0;
            canturn = 0;
            image_index = 0;
            sfx_play(sndBrake);
            if (!inwater) {
                smk = instance_create(x, y, oFXAnimSpark);
                smk.image_speed = 0.5;
                smk.additive = 0;
                smk.sprite_index = sSmoke1;
                smk.image_alpha = 0.6;
            }
            if (inwater) {
                repeat (2 + floor(random(4))) {
                    bubble = instance_create(x, y, oLBubble);
                    if (instance_exists(bubble)) {
                        bubble.hspeed = random_range(-1.5, 1.5);
                        bubble.vspeed = -0.1 - random(0.5);
                        bubble.alarm[0] = 90 + random(120);
                    }
                }
            }
        } // if (facing == RIGHT && (kRight == 0 || kLeft > 0) || facing == LEFT && (kLeft == 0 || kRight > 0))
    } // if (state == RUNNING && speedboost)
    if (kLeft > 0) {
        if (facing == RIGHT && turning == 0 && speedboost == 0 && aimlock == 0) {
            turning = 1;
            image_index = 0;
            statetime = 0;
            dash = 0;
            unmorphing = 0;
        }
        if (canturn == 1) facing = LEFT;
        idle = 0;
        if (position_meeting(x - 7, y - 8, oSolid) == false && position_meeting(x - 7, y - 24, oSolid) == false) {
            if (!inwater && waterfall == 0 || global.currentsuit == 2) {
                if (statetime <= 5 && kLeft > 0 && turning = 0 && state == RUNNING){
                xVel = -2.2;
                //xAcc = -2.4;
                xFric = 1;
                }
                //hspeed = 0;
                if (statetime <= 5) xAcc -= runAcc / 8;
                if (statetime > 5) {
                    if (walking == 0) {
                        xAcc -= runAcc;
                    } else xAcc -= runAcc * 0.5;
                }
            }
            if ((inwater || waterfall > 0) && global.currentsuit != 2) {
                if (statetime <= 90) xAcc = -runAcc * statetime / 90 * 0.7;
                if (statetime > 90) xAcc -= runAcc * 0.7;
                if (walking) xAcc *= 0.5;
            }
        }
        if (facing == LEFT && position_meeting(x - 7, y - 31, oSolid) && position_meeting(x, y - 35, oSolid) == false && position_meeting(x - 7, y - 35, oSolid) == false && kJump && kJumpPushedSteps == false && global.powergrip && global.opautoclimb && y > 32) {
            if (position_meeting(x - 7, y - 52, oSolid) == false || global.morphball) {
                state = CLIMBING;
                statetime = 0;
                image_index = 0;
                sfx_play(sndPullUp);
                y -= 5;
            }
        }
        if (facing == LEFT && position_meeting(x - 7, y - 14, oSolid) && position_meeting(x - 7, y - 22, oSolid) == false && kJump && kJumpPushedSteps == false && global.powergrip && global.opautoclimb && y > 32) {
            if (position_meeting(x - 7, y - 35, oSolid) == false || global.morphball) {
                state = CLIMBING;
                statetime = 4;
                image_index = 4;
                sfx_play(sndPullUp);
            }
        }
        if (facing == LEFT && position_meeting(x - 7, y - 22, oSolid) && position_meeting(x - 7, y - 8, oSolid) == false && kDown && kDownPushedSteps > 4 && global.morphball && global.opautomorph) {
            state = DUCKING;
            statetime = 0;
            turning = 0;
            sfx_play(sndCrouch);
        }
    } // if (kLeft > 0)
    if (kRight > 0) {
        if (facing == LEFT && turning == 0 && speedboost == 0 && aimlock == 0) {
            turning = 1;
            image_index = 0;
            statetime = 0;
            dash = 0;
            unmorphing = 0;
        }
        if (canturn == 1) facing = RIGHT;
        idle = 0;
        if (position_meeting(x + 7, y - 8, oSolid) == false && position_meeting(x + 7, y - 24, oSolid) == false) {
            if (!inwater && waterfall == 0 || global.currentsuit == 2) {
                if (statetime <= 5 && turning = 0 && kRight > 0 && state == RUNNING){
                //xAcc = 2.4;
                xVel = 2.2;
                xFric = 1;
                }
                //hspeed = 0;
                if (statetime <= 5) xAcc += runAcc / 8;
                if (statetime > 5) {
                    if (walking == 0) {
                        xAcc += runAcc;
                    } else xAcc += runAcc * 0.5;
                }
            }
            if ((inwater || waterfall > 0) && global.currentsuit != 2) {
                if (statetime <= 90) xAcc = runAcc * statetime / 90 * 0.7;
                if (statetime > 90) xAcc += runAcc * 0.7;
                if (walking) xAcc *= 0.5;
            }
        }
        if (facing == RIGHT && position_meeting(x + 7, y - 31, oSolid) && position_meeting(x, y - 35, oSolid) == false && position_meeting(x + 7, y - 35, oSolid) == false && kJump && kJumpPushedSteps == false && global.powergrip && global.opautoclimb) {
            if (position_meeting(x + 7, y - 52, oSolid) == false || global.morphball) {
                state = CLIMBING;
                statetime = 0;
                image_index = 0;
                sfx_play(sndPullUp);
                y -= 5;
            }
        }
        if (facing == RIGHT && position_meeting(x + 7, y - 14, oSolid) && position_meeting(x + 7, y - 22, oSolid) == false && kJump && kJumpPushedSteps == false && global.powergrip && global.opautoclimb) {
            if (position_meeting(x + 7, y - 35, oSolid) == false || global.morphball) {
                state = CLIMBING;
                statetime = 4;
                image_index = 4;
                sfx_play(sndPullUp);
            }
        }
        if (facing == RIGHT && position_meeting(x + 7, y - 22, oSolid) && position_meeting(x + 7, y - 8, oSolid) == false && kDown && kDownPushedSteps > 4 && global.morphball && global.opautomorph) {
            state = DUCKING;
            statetime = 0;
            turning = 0;
            sfx_play(sndCrouch);
        }
    } // if (kRight > 0)
} // if (state == STANDING || state == RUNNING)

//below is walljump code
//NOTE: OTHER AIR STATE CODE IS HERE LOL !
if (platformCharacterIs(IN_AIR)) {
    if (state == DREADSLIDE){
        state = JUMPING;
        vjump = 1;
    }
    if (vjump == 1){
        dash = 0;
        speedboost = 0;
    }
    if (yVel < 0 && kJump == 0 && state != AIRBALL) yVel = 0;
    if (yVel < 0 && kJump == 0 && state == AIRBALL) {
        if (fixedy == 0 && ballbounce == 0) yVel = 0;
    }
    if (waterfall > 0) yVel += 0.2;
    if (state == JUMPING && vjump && charge > 0 && (inwater == 0 && waterfall == 0 || global.currentsuit == 2) && kJump && kJumpPushedSteps == 0) {
        state = SJSTART;
        statetime = 0;
        sjball = 0;
        vjump = 0;
    }
    if (state == JUMPING && statetime > 4 && position_meeting(x, y + 8, oSolid) == false && justwalljumped == 0 && walljumping == 0 && monster_drain == 0) {
        if (kLeft > 0 && kJump == 1 && kJumpPushedSteps == 0 && position_meeting(x + 8, y - 16, oSolid) == true) {
            walljumping = 1;
            image_index = 0;
            statetime = 0;
            turning = 0;
            facing = LEFT;
            aimdirection = 1;
            canturn = 0;
            justwalljumped = 10;
            vjump = 0;
            sfx_stop(spinjump_sound);
            sfx_play(sndWallJump);
            x -= 2;
            while (isCollisionRight(2) == 0) x += 1;
            if (!inwater) {
                smk = instance_create(x + 7, y - 7, oFXAnimSpark);
                smk.image_speed = 0.5;
                smk.vspeed = 0.5;
                smk.additive = 0;
                smk.sprite_index = sSmoke1;
                smk.image_alpha = 0.6;
                smk.image_xscale = 0.7;
                smk.image_yscale = 0.7;
                smk = instance_create(x + 7, y - 7, oFXAnimSpark);
                smk.image_speed = 0.5;
                smk.vspeed = -0.5;
                smk.additive = 0;
                smk.sprite_index = sSmoke1;
                smk.image_alpha = 0.6;
                smk.image_xscale = 0.7;
                smk.image_yscale = 0.7;
            }
            if (inwater) {
                repeat (4 + floor(random(4))) {
                    bubble = instance_create(x, y, oLBubble);
                    if (instance_exists(bubble)) {
                        bubble.hspeed = -random(2);
                        bubble.vspeed = -0.1 - random(1);
                        bubble.alarm[0] = 90 + random(120);
                    }
                }
            }
        } // if (kLeft > 0 && kJump == 1 && kJumpPushedSteps == 0 && position_meeting(x + 8, y - 16, oSolid) == true)
        if (kRight > 0 && kJump == 1 && kJumpPushedSteps == 0 && position_meeting(x - 8, y - 16, oSolid) == true) {
            walljumping = 1;
            image_index = 0;
            statetime = 0;
            turning = 0;
            facing = RIGHT;
            aimdirection = 0;
            canturn = 0;
            justwalljumped = 10;
            vjump = 0;
            sfx_stop(spinjump_sound);
            sfx_play(sndWallJump);
            x += 2;
            while (isCollisionLeft(2) == 0) x -= 1;
            if (!inwater) {
                smk = instance_create(x - 7, y - 7, oFXAnimSpark);
                smk.image_speed = 0.5;
                smk.vspeed = 0.5;
                smk.additive = 0;
                smk.sprite_index = sSmoke1;
                smk.image_alpha = 0.6;
                smk.image_xscale = 0.7;
                smk.image_yscale = 0.7;
                smk = instance_create(x - 7, y - 7, oFXAnimSpark);
                smk.image_speed = 0.5;
                smk.vspeed = -0.5;
                smk.additive = 0;
                smk.sprite_index = sSmoke1;
                smk.image_alpha = 0.6;
                smk.image_xscale = 0.7;
                smk.image_yscale = 0.7;
            }
            if (inwater) {
                repeat (4 + floor(random(4))) {
                    bubble = instance_create(x, y, oLBubble);
                    if (instance_exists(bubble)) {
                        bubble.hspeed = random(2);
                        bubble.vspeed = -0.1 - random(1);
                        bubble.alarm[0] = 90 + random(120);
                    }
                }
            }
        } // if (kRight > 0 && kJump == 1 && kJumpPushedSteps == 0 && position_meeting(x - 8, y - 16, oSolid) == true)
    } // if (state == JUMPING && statetime > 4 && position_meeting(x, y + 8, oSolid) == false && ...)
    if (walljumping) {
        if (facing == LEFT) while (isCollisionRight(1) == 0) x += 1;
        if (facing == RIGHT) while (isCollisionLeft(1) == 0) x -= 1;
    }
    if (kJump && kJumpPushedSteps == 0 && vjump == 1 && aimdirection != 6 && aimdirection != 7 && novjump == 0 && state != AIRBALL && aimlock == 0 && monster_drain == 0) {
        vjump = 0;
        yVel = 0;
        novjump = 10;
        LoopSoundMono(spinjump_sound);
        jumpfwd = 1;
        if (global.spacejump && (inwater == 0 && waterfall == 0 || global.currentsuit == 2) && monster_drain == 0) {
            state = JUMPING;
            yVel = initialJumpAcc;
            jumpfwd = 1;
            hijump = 1;
            novjump = 30;
        }
        statetime = 0;
    }
    if (dash > 0 && (facing == RIGHT && kLeft > 0 || facing == LEFT && kRight > 0)) {
        dash = 0;
        canturn = 1;
    }
    if (yVel < 0 && vjump == 1 && state != AIRBALL) {
        if (isCollisionUpRight() == 1 && kRight == 0) x -= 2;
        if (isCollisionUpLeft() == 1 && kLeft == 0) x += 2;
    }
    if (yVel < 0 && state == AIRBALL) {
        if (isCollisionUpRight() == 1 && kRight == 0) x -= 1 + (statetime < 2) + (statetime < 4);
        if (isCollisionUpLeft() == 1 && kLeft == 0) x += 1 + (statetime < 2) + (statetime < 4);
    }
    //below is spinjump air state
    if (vjump == 0 && dash == 0 && state != AIRBALL && vSpin == 0) {
        if (sidePressTimer == 0) {
            if (!inwater || global.currentsuit == 2) {
                if (facing == LEFT) xVel = -2.4;
                if (facing == RIGHT) xVel = 2.4;
            }
            if ((inwater || waterfall > 0) && global.currentsuit != 2) {
                if (facing == LEFT) {
                    xVel = -0.4 - airtime / 240 * 2;
                    if (xVel < -2.4) xVel = -2.4;
                }
                if (facing == RIGHT) {
                    xVel = 0.4 + airtime / 240 * 2;
                    if (xVel > 2.4) xVel = 2.4;
                }
            }
        }
        else {
            if (kRight == 0 && kLeft == 0) {
                vSpin = 1;
            }
        }
    }
    if (state != AIRBALL) yAcc += gravityIntensity * 0.8;
    if (state == AIRBALL) yAcc += 0.3;
    if ((inwater || waterfall > 0) && global.currentsuit != 2) yAcc *= 0.4;
    if (state != AIRBALL) {
        if (kLeft > 0) {
            if (canturn == 1 && walljumping == 0) {
                if (facing == RIGHT && turning == 0) {
                    turning = 1;
                    image_index = 0;
                    airtime = 0;
                    unmorphing = 0;
                }
                facing = LEFT;
            }
            if (kLeftPushedSteps > 3) {
                if (vjump == 1 || jumpfwd == 0 || (inwater || waterfall > 0) && global.currentsuit != 2) xAcc = -0.4;
            }
            if (position_meeting(x + 8, y - 16, oSolid) == true && kLeftPushedSteps < 9 && vjump == 0) xVel = 0;
        }
        if (kRight > 0) {
            if (canturn == 1 && walljumping == 0) {
                if (facing == LEFT && turning == 0) {
                    turning = 1;
                    image_index = 0;
                    airtime = 0;
                    unmorphing = 0;
                }
                facing = RIGHT;
            }
            if (kRightPushedSteps > 3) {
                if (vjump == 1 || jumpfwd == 0 || (inwater || waterfall > 0) && global.currentsuit != 2) xAcc = 0.4;
            }
            if (position_meeting(x - 8, y - 16, oSolid) == true && kRightPushedSteps < 9 && vjump == 0) xVel = 0;
        }
        //if (vjump == 0 && jumpfwd == 1 && dash == 0) {
          //  if (facing == LEFT) xAcc = -0.5;
            //if (facing == RIGHT) xAcc = 0.5;
        //}
    } // if (state != AIRBALL)
} // if (platformCharacterIs(IN_AIR))
//below is normal landing
xVelStored = 0;
xVelStoredTimer = 0;
if ((isCollisionBottom(1) || isCollisionPlatformBottom(1)) && platformCharacterIs(IN_AIR) && yVel >= 0) {
    image_index = 0;
    if (state == AIRBALL && ballfall >= 32) {
        yVel = -1.7;
        sfx_play(sndBallBounce);
        ballbounce = 8;
    } else {
        yVel = 0;
        yAcc = 0;
        turning = 0;
        canturn = 1;
        landing = 1;
        walljumping = 0;
        if (state != AIRBALL) {
            idle = 0;
            dash = 0;
            statetime = 0;
            if (kRight > 0 || kLeft > 0) {
                state = RUNNING;
            }
            else {
                state = STANDING;            
            }
        }
            PlayLandingSound(get_floor_material());
        if (state == AIRBALL && sball == 0 && !moverobj) {
            state = BALL;
            statetime = 0;
            if (mockball == 0) {
                xVel = 0;
                xAcc = 0;
                dash = 0;
                machball = 0;
                speedboost = 0;
                sfx_stop(sndSJLoop);
            }
            else {
                if dash > 0 {    
                    machball = 1;
                }
            }
            sfx_play(sndCrouch);
        }
    } // if (state == AIRBALL && ballfall >= 32) else
    if (sball == 0) {
        if (!inwater && !moverobj) {
            smk = instance_create(x, y, oFXAnimSpark);
            smk.image_speed = 0.5;
            smk.hspeed = 0.5;
            smk.additive = 0;
            smk.sprite_index = sSmoke1;
            smk.image_alpha = 0.6;
            smk.image_xscale = 0.7;
            smk.image_yscale = 0.7;
            smk = instance_create(x, y, oFXAnimSpark);
            smk.image_speed = 0.5;
            smk.hspeed = -0.5;
            smk.additive = 0;
            smk.sprite_index = sSmoke1;
            smk.image_alpha = 0.6;
            smk.image_xscale = 0.7;
            smk.image_yscale = 0.7;
        }
        if (inwater && !moverobj) {
            repeat (2 + floor(random(4))) {
                bubble = instance_create(x, y, oLBubble);
                if (instance_exists(bubble)) {
                    bubble.hspeed = random_range(-1.5, 1.5);
                    bubble.vspeed = -0.1 - random(0.5);
                    bubble.alarm[0] = 90 + random(120);
                }
            }
        }
    } // if (sball == 0)
} // if ((isCollisionBottom(1) || isCollisionPlatformBottom(1)) && platformCharacterIs(IN_AIR) && yVel >= 0)

//below is falling
if (isCollisionBottom(1) == 0 && isCollisionPlatformBottom(1) == 0 && platformCharacterIs(ON_GROUND)) {
    xAcc = xAcc / 3.5;
    if (state != AIRBALL && state != BALL) state = JUMPING;
    if (state == BALL){
        state = AIRBALL;
        sball = 0;
    }
    if (kJump == 0) vjump = 1;
    y += 1;
}
if (isCollisionTop(1)) {
    yVel = 0;
    hijump = 0;
}
if (isCollisionLeft(1) && xVel < 0 || isCollisionRight(1) && xVel > 0) {
    if (aimlock == 0 && dash == 0) xVel = 0;
    if (dash > 0 && (collision_line(x + 7, y - 14, x, y - 14, oSolid, true, true) > 0 && facing == RIGHT || collision_line(x - 7, y - 14, x, y - 14, oSolid, true, true) > 0 && facing == LEFT)) {
        dash = 0;
        canturn = 1;
    }
    if (dash > 0 && state != BALL && (collision_line(x + 7, y - 24, x, y - 24, oSolid, true, true) > 0 && facing == RIGHT || collision_line(x - 7, y - 24, x, y - 24, oSolid, true, true) > 0 && facing == LEFT)) {
        dash = 0;
        canturn = 1;
    }
    if (platformCharacterIs(IN_AIR)) xAcc = 0;
    jumpfwd = 0;
}
if ((state == STANDING || state == DUCKING || state == RUNNING) && charge > 0 && (inwater == 0 && waterfall == 0 || global.currentsuit == 2) && kJump && kJumpPushedSteps == 0 && kLeft == 0 && kRight == 0) {
    state = SJSTART;
    statetime = 0;
    sjball = 0;
}
//below is spin jump from ground
if (kJump && kJumpPushedSteps == 0 && state != BALL && state != AIRBALL && state != DREADSLIDE && platformCharacterIs(ON_GROUND)) {
    state = JUMPING;
    if (kLeft == 0 && kRight == 0 || aimlock || monster_drain > 0 && sidePressTimer == 0) {
        vjump = 1;
    } else vjump = 0;
    if (!inwater || global.currentsuit >= 2) yAcc += initialJumpAcc + (dash * -0.1); 
    else yAcc += initialJumpAcc;
    jumpfwd = 1;
    hijump = 1;
    statetime = 0;
    if (vjump == 1) sfx_play(sndJump);
    if (vjump == 0) {
        LoopSoundMono(spinjump_sound);
    
    }
    instance_create(x, y, oJTrail);
    if ((dash > 0 && dash < 45)) xVel *= 0.5
    else{ 
        if (dash == 0) xAcc = 0;
        if (dash == 45) xVel *=1;
    }
}
if (kJump == 0 || platformCharacterIs(ON_GROUND)) hijump = 0;
if (global.hijump && kJump && state == JUMPING && hijump && monster_drain == 0) {
    if ((!inwater && waterfall == 0 || global.currentsuit >= 2) && statetime <= 11) yVel = initialJumpAcc + (dash * -0.05);
}
if (monster_drain > 0) {
    hijump = 0;
    vjump = 1;
    if (yVel < -4) yVel = -4;
}
if (kJump && kJumpPushedSteps == 0 && state == JUMPING && global.spacejump == 1 && novjump == 0 && aimlock == 0 && monster_drain == 0 && (inwater == 0 && waterfall == 0 || global.currentsuit == 2) && (vjump == 0 || vjump == 1 && aimdirection != 6 && aimdirection != 7)) {
    if (yVel > 2 && (!inwater && waterfall == 0 || global.currentsuit == 2) || yVel > 1 && (inwater || waterfall > 0) && global.currentsuit != 2) {
        state = JUMPING;
        yVel = initialJumpAcc;
        jumpfwd = 1;
        hijump = 1;
        statetime = 0;
        vjump = 0;
    }
}

//below is ball state stuff
if (state == BALL || state == AIRBALL) {
    if (facing == RIGHT && kLeft > 0 || facing == LEFT && kRight > 0) {
        turning = 1;
        image_index = 0;
        if (false) // looks better with this code but DruidVorse found problem with it enabled.
        {
            if (facing == RIGHT && kLeft > 0) { facing = LEFT; }    
            if (facing == LEFT && kRight > 0) {  facing = RIGHT; }
        }
    }
    
    
    if (facing == RIGHT && kLeft > 0 || facing == LEFT && kRight > 0) {
        turning = 1;
        image_index = 0;
    }  
    
    if (dash == 45) {
        sjball = 1;
        if (state == BALL && (facing == RIGHT && kRight == 0 || facing == LEFT && kLeft == 0)) {
            dash = 0;
            state = BRAKING;
            statetime = 0;
            canturn = 1;
            sfx_play(sndBrake);
            if (!inwater) {
                smk = instance_create(x, y, oFXAnimSpark);
                smk.image_speed = 0.5;
                smk.additive = 0;
                smk.sprite_index = sSmoke1;
                smk.image_alpha = 0.6;
            }
            if (inwater) {
                repeat (2 + floor(random(4))) {
                    bubble = instance_create(x, y, oLBubble);
                    if (instance_exists(bubble)) {
                        bubble.hspeed = random_range(-1.5, 1.5);
                        bubble.vspeed = -0.1 - random(0.5);
                        bubble.alarm[0] = 90 + random(120);
                    }
                }
            }
        }
        if (state == AIRBALL) {
            if (facing == RIGHT && kLeft > 0 || facing == LEFT && kRight > 0) {
                dash = 0;
                canturn = 1;
            }
        }
    } // if (dash > 0)
    if (kLeft > 0 && fixedx == 0) {
        if ((kLeftPushedSteps > 2 || isCollisionMoveableSolidRight(1)) && (facing == LEFT || approximatelyZero(xVel))) {
            if (facing == RIGHT && dash > 0) {
                dash = 0;
                state = BRAKING;
                statetime = 0;
                canturn = 1;
                sfx_play(sndBrake); //test3
            }
            facing = LEFT;
            if (state == BALL && dash == 0) xVel = -6 /(1+walking); //added
            //if (state == BALL && dash > 0) xVel = -10;
            if (state == AIRBALL && dash == 0) xVel = -4.5;
        }
    }
    if (kRight > 0 && fixedx == 0) {
        if ((kRightPushedSteps > 2 || isCollisionMoveableSolidLeft(1)) && (facing == RIGHT || approximatelyZero(xVel))) {
            if (facing == LEFT && dash > 0) {
                dash = 0;
                state = BRAKING;
                statetime = 0;
                canturn = 1;
                sfx_play(sndBrake); //test2
            }
            facing = RIGHT;
            if (state == BALL && dash == 0) xVel = 6 /(1+walking); //added
            //if (state == BALL && dash > 0) xVel = 10;
            if (state == AIRBALL && dash == 0) xVel = 4.5;
        }
    }
    if (fixedx > 0) {
        if (facing == RIGHT) xVel = 4;
        if (facing == LEFT) xVel = -4;
    }
    //if (state == AIRBALL && dash > 0 && airtime > 1) {
        //if (facing == RIGHT) xVel = 9;
        //if (facing == LEFT) xVel = -9;
    //}
    if (state == AIRBALL && speedboost == 0 && yVel > 0) {
        ballfall += 1;
    } else ballfall = 0;
    if (state == BALL && state != SPIDERBALL && charge > 0 && global.jumpball && (inwater == 0 && waterfall == 0 || global.currentsuit == 2) && kJump && kJumpPushedSteps == 0 && kLeft == 0 && kRight == 0) {
        state = SJSTART;
        statetime = 0;
        sjball = 1;
    }
    if (platformCharacterIs(ON_GROUND) && kJump && kJumpPushedSteps == 0 && global.jumpball == 1 && state == BALL) {
        if (global.hijump == 0) jump_vel = initialJumpAcc * 0.86;
        if (global.hijump == 1) jump_vel = initialJumpAcc;
        if (monster_drain > 0) jump_vel = -1;
        if (isCollisionTop(abs(jump_vel) + 1) == 0) {
            yVel = jump_vel;
        } else if (isCollisionTop(abs(jump_vel)) == 0) {
            yVel = jump_vel + 3;
        } else if (isCollisionTop(abs(jump_vel) - 1) == 0) {
            yVel = jump_vel + 4;
        } else if (isCollisionTop(abs(jump_vel) - 2) == 0) {
            yVel = jump_vel + 5;
        } else if (isCollisionTop(abs(jump_vel) - 3) == 0) { 
            yVel = jump_vel + 6;
        }
        state = AIRBALL;
        statetime = 0;
        sball = 0;
        //weird spiderball debug ^
        sfx_play(sndBallBounce);
    }
} // if (state == BALL || state == AIRBALL)

chStepSpiderBall();

if ((walking == 1 || (inwater || waterfall > 0) && global.currentsuit < 2 || turning) && monster_drain == 0 && state == RUNNING) speedboost_steps = 0;
if (dash == 0 && state == RUNNING && speedboost_steps > 25 && (inwater == 0 || global.currentsuit == 2)) dash = 1;
if (global.speedbooster && speedboost == 0 && dash == 45) {
    speedboost = 1;
    canturn = 0;
    sjball = 0;
    charge = 0;
    sfx_play(sndSBSonicBoom);
    speedboostFXTimer = 5;
    alarm[2] = 30;
}
if (state == SJSTART) {
    if (statetime == 0) {
        sjdir = 0;
        sfx_play(sndSJStart);
        image_index = 0;
        canturn = 0;
        yVel = 0;
        xVel = 0;
        xAcc = 0;
        yAcc = 0;
        charge = 0;
        morphing = 0;
        unmorphing = 0;
        if (isCollisionBottom(1)) {
            sjtargety = floor(y) - 8;
            sjtype = 0;
        } else {
            sjtargety = y;
            sjtype = 1;
        }
        if (isCollisionTop(2) == 0) y -= 2;
    }
    if (statetime > 0) {
        if (y > sjtargety && isCollisionTop(1) == 0) y -= 1;
        if (isCollisionLeft(1)) x += 1;
        if (isCollisionRight(1)) x -= 1;
        if (kRight > 0 && kUp == 0 && kAim == 0) sjdir = 1;
        if (kRight > 0 && (kUp || kAim) || facing == RIGHT && kAim && kLeft == 0) sjdir = 3;
        if (kLeft > 0 && kUp == 0 && kAim == 0) sjdir = 2;
        if (kLeft > 0 && (kUp || kAim) || facing == LEFT && kAim && kRight == 0) sjdir = 4;
        if (kUp && kLeft == 0 && kRight == 0 && kAim == 0) sjdir = 0;
    }
    if (statetime == 6 && kJump) {
        if (sjtype == 0) sjtargety -= 10;
    }
    if (statetime == 18) {
        state = SUPERJUMP;
        statetime = 0;
        image_index = 0;
        sfx_loop(sndSJLoop);
        sfx_play(sndSBSonicBoom);
    }
} // if (state == SJSTART)
if (state == SUPERJUMP) {
    if (sjdir != 0 && statetime >= 5 && sjball == 0) {
        image_index = 2;
        image_speed = 0;
    }
    if (sjdir == 0 && statetime == 0) {
        repeat (8) {
            if (isCollisionUpRight()) x -= 1;
            if (isCollisionUpLeft()) x += 1;
        }
    }
    if (sjdir == 0 && statetime > 0) {
        yVel = -8;
        repeat (8) {
            if (isCollisionUpRight()) x -= 1;
            if (isCollisionUpLeft()) x += 1;
        }
    }
    if (sjdir == 1 && statetime > 0) {
        xVel = 9;
        yVel = 0;
        facing = RIGHT;
    }
    if (sjdir == 2 && statetime > 0) {
        xVel = -9;
        yVel = 0;
        facing = LEFT;
    }
    if (sjdir == 3 && statetime > 0) {
        xVel = 7.5;
        yVel = -3.5;
        facing = RIGHT;
    }
    if (sjdir == 4 && statetime > 0) {
        xVel = -7.5;
        yVel = -3.5;
        facing = LEFT;
    }
    //shinespark into slope below
    if (sjdir != 0 && facing == RIGHT && isCollisionRightSlope(0) || facing == LEFT && isCollisionLeftSlope(0)) {
        yVel = 0;
        if (facing == RIGHT) {
            repeat (4) {
                if (isCollisionRight(1) == 0) x += 1;
            }
        }
        if (facing == LEFT) while (isCollisionLeft(1) == 0) x -= 1;
        if (facing == RIGHT && (kRight == 0 || kLeft > 0) || facing == LEFT && (kLeft == 0 || kRight > 0)) {
            state = BRAKING;
            statetime = 0;
            dash = 0;
            canturn = 0;
            image_index = 0;
            sfx_play(sndBrake);
            sfx_stop(sndSJLoop);
        } else {
            if (sjball == 0) {
                state = RUNNING;
                statetime = 0;
                dash = 44;
                sfx_stop(sndSJLoop);
                if (facing == RIGHT) {
                    xVel = 9;
                } else xVel = -9;
                shinespark = 4;
            }
            if (sjball == 1) {
                state = BALL;
                statetime = 0;
                canturn = 1;
                if (facing == RIGHT && kRight > 0 || facing == LEFT && kLeft > 0) {
                    dash = 45;
                    speedboost = 1;
                    sfx_play(sndSBStart);
                    sfx_stop(sndSJLoop);
                    alarm[2] = 30;
                    if (facing == RIGHT) {
                        xVel = 9;
                    } else xVel = -9;
                    shinespark = 4;
                }
            }
        } // if (facing == RIGHT && (kRight == 0 || kLeft > 0) || facing == LEFT && (kLeft == 0 || kRight > 0)) else
    } else if (isCollisionLeft(1) && (sjdir == 2 || sjdir == 4) || isCollisionRight(1) && (sjdir == 1 || sjdir == 3) || isCollisionTop(1) && (sjdir == 0 || sjdir == 3 || sjdir == 4)) {
        state = SJEND;
        statetime = 0;
    } // if (sjdir != 0 && facing == RIGHT && isCollisionRightSlope(0) || facing == LEFT && isCollisionLeftSlope(0)) else
} // if (state == SUPERJUMP)
if (state == SJEND) {
    yVel = 0;
    xVel = 0;
    dash = 0;
    if (statetime == 0) {
        quake = instance_create(0, 0, oQuake);
        quake.delay = 0;
        quake.duration = 20;
        quake.intensity = 2;
        sfx_stop(sndSJLoop);
        sfx_play(sndSMissileExpl);
    }
    if (sjball == 0) {
        if (statetime == 0) {
            image_index = 1;
            image_speed = 0;
        }
        if (statetime == 10) {
            if (facing == RIGHT) {
                if (global.currentsuit == 0) sprite_index = scr_suit_sprites(sJumpRight,sJumpRight_fusion);
                if (global.currentsuit == 1) sprite_index = scr_suit_sprites(sVJumpRight,sJumpRight_fusion);
                if (global.currentsuit == 2) sprite_index = scr_suit_sprites(sGJumpRight,sJumpRight_fusion);
                image_index = 0;
                image_speed = 0.5;
            }
            if (facing == LEFT) {
                if (global.currentsuit == 0) sprite_index = scr_suit_sprites(sJumpLeft,sJumpLeft_fusion);
                if (global.currentsuit == 1) sprite_index = scr_suit_sprites(sVJumpLeft,sJumpLeft_fusion);
                if (global.currentsuit == 2) sprite_index = scr_suit_sprites(sGJumpLeft,sJumpLeft_fusion);
                image_index = 0;
                image_speed = 0.5;
            }
        }
        if (statetime == 28) {
            if (facing == RIGHT) {
                if (global.currentsuit == 0) sprite_index = scr_suit_sprites(sSJumpStart,sSJumpStart_fusion);
                if (global.currentsuit == 1) sprite_index = scr_suit_sprites(sVSJumpStart,sSJumpStart_fusion);
                if (global.currentsuit == 2) sprite_index = scr_suit_sprites(sGSJumpStart,sSJumpStart_fusion);
                image_index = 2.5;
                image_speed = -0.15;
            }
            if (facing == LEFT) {
                if (global.currentsuit == 0) sprite_index = scr_suit_sprites(sSJumpStartL,sSJumpStartL_fusion);
                if (global.currentsuit == 1) sprite_index = scr_suit_sprites(sVSJumpStartL,sSJumpStartL_fusion);
                if (global.currentsuit == 2) sprite_index = scr_suit_sprites(sGSJumpStartL,sSJumpStartL_fusion);
                image_index = 2.5;
                image_speed = -0.15;
            }
        }
        if (statetime == 40) {
            state = JUMPING;
            statetime = 20;
            vjump = 1;
            canturn = 1;
            image_index = 4;
            if (facing == RIGHT && kLeft > 0) {
                facing = LEFT;
                turning = 1;
            }
            if (facing == LEFT && kRight > 0) {
                facing = RIGHT;
                turning = 1;
            }
            if (facing == RIGHT) aimdirection = 0;
            if (facing == LEFT) aimdirection = 1;
        }
    } // if (sjball == 0)
    if (sjball == 1) {
        image_speed = 0;
        if (statetime == 40 || sball == 1) {
            state = AIRBALL;
            statetime = 0;
            canturn = 1;
            sjball = 0;
        }
    }
} // if (state == SJEND)
if (state == DUCKING) {
    if (kLeft > 0) {
        if (canturn == 1 && facing == RIGHT && turning == 0) {
            facing = LEFT;
            turning = 1;
            image_index = 0;
        }
        if (position_meeting(x - 7, y - 22, oSolid) && position_meeting(x - 7, y - 8, oSolid) == false && kDown && kDownPushedSteps > 2 && statetime > 2 && global.morphball && global.opautomorph) {
            state = BALL;
            morphing = 1;
            image_index = 0;
            statetime = 0;
            turning = 0;
            sfx_play(sndMorph);
        }
        if (statetime > 10 && kLeftPushedSteps > 10 && position_meeting(x - 7, y - 22, oSolid) == false && position_meeting(x - 7, y - 8, oSolid) == false) state = RUNNING;
    }
    if (kRight > 0) {
        if (canturn == 1 && facing == LEFT && turning == 0) {
            facing = RIGHT;
            turning = 1;
            image_index = 0;
        }
        if (position_meeting(x + 7, y - 22, oSolid) && position_meeting(x + 7, y - 8, oSolid) == false && kDown && kDownPushedSteps > 2 && statetime > 2 && global.morphball && global.opautomorph) {
            state = BALL;
            morphing = 1;
            image_index = 0;
            statetime = 0;
            turning = 0;
            sfx_play(sndMorph);
        }
        if (statetime > 10 && kRightPushedSteps > 10 && position_meeting(x + 7, y - 22, oSolid) == false && position_meeting(x + 7, y - 8, oSolid) == false) state = RUNNING;
    }
} // if (state == DUCKING)
if (state == HURT) {
    dash = 0;
    charge = 0;
    sball = 0;
    yAcc += 0.3;
    if (sfx_isplaying(sndSJLoop)) sfx_stop(sndSJLoop);
}
if (state == IDLE) {
    canbehit = 0;
    if (juststarted == 0 && kRight > 0) {
        facing = RIGHT;
        canbehit = 1;
    }
    if (juststarted == 0 && kLeft > 0) {
        facing = LEFT;
        canbehit = 1;
    }
    if (facing != 0 && kRight == 0 && kLeft == 0) {
        state = STANDING;
        canrun = 1;
        statetime = 0;
        idle = 0;
        canbehit = 1;
    }
}
if (state == SAVING) {
    if (x < global.savexpos) x += 1;
    if (x > global.savexpos) x -= 1;
    charge = 0;
    if (statetime == 5) facing = 0;
    if (statetime >= 10 && x == global.savexpos) {
        state = SAVINGFX;
        statetime = 0;
    }
}
if (state == SAVINGFX) {
    if (statetime == 1) {
        sfx_play(sndSave);
        instance_create(x, y, oSaveFX);
        instance_create(x, y, oSaveSparks);
        popup_text(get_text("Notifications", "GameSaved"));
        save_game("save" + string(global.saveslot + 1));
        refill_heath_ammo();
    }
    if (statetime == 230) state = IDLE;
}
if (state == SAVINGSHIP) {
    if (x < global.savexpos) x += 1;
    if (x > global.savexpos) x -= 1;
    charge = 0;
    if (statetime == 5) {
        facing = 0;
        if (global.currentsuit == 0) sprite_index = scr_suit_sprites(sFront,sFront_fusion);
        if (global.currentsuit == 1) sprite_index = scr_suit_sprites(sVFront,sFront_fusion);
        if (global.currentsuit == 2) sprite_index = scr_suit_sprites(sGFront,sFront_fusion);
        image_speed = 0.1;
    }
    if (statetime < 48) y += 1;
    if (global.event[304] == 0) {
        if (statetime == 60) {
            state = SAVINGSHIPFX;
            statetime = 0;
        }
    } else {
        if (statetime == 120) {
            with (oSaveShip) instance_destroy();
            with (oHatchling) instance_destroy();
            instance_create(3296, 1088, oShipOutro);
            view_object[0] = oShipOutro;
            with (oShip1) instance_destroy();
            visible = false;
            oControl.displaygui = 0;
            global.enablecontrol = 0;
        }
        if (statetime == 420) {
            instance_create(0, 0, oFinalFadeout);
            mus_fadeout(musHatchling);
        }
        if (statetime == 760) {
            remove_persistent_objects();
            sfx_stop_all();
            global.vibL = 0;
            global.vibR = 0;
            global.ingame = 0;
            global.darkness = 0;
            global.gotolog = -1;
            global.enablecontrol = 1;
            global.transitiontype = 0;
            oControl.displaygui = 1;
            room_goto(rm_credits);
            mus_stop_all();
            mus_play_once(musCredits);
        }
    } // if (global.event[304] == 0) else
} // if (state == SAVINGSHIP)
if (state == SAVINGSHIPFX) {
    if (statetime == 1) {
        sfx_play(sndSave);
        save_game("save" + string(global.saveslot + 1));
        refill_heath_ammo();
        popup_text(get_text("Notifications", "GameSaved"));
    }
    if (statetime > 120) {
        if (y > 1088) y -= 1;
        if (y == 1088) state = IDLE;
    }
}
if (state == ELEVATOR) {
    if (x < global.savexpos) x += 1;
    if (x > global.savexpos) x -= 1;
    charge = 0;
    if (statetime == 0) {
        xVel = 0;
        yVel = 0;
    }
    if (statetime == 5) facing = 0;
}
if (state == GFELEVATOR) {
    charge = 0;
    if (statetime == 0) {
        xVel = 0;
        yVel = 0;
    }
    if (statetime == 5) facing = 0;
    if (statetime < 20) {
        if (x < global.savexpos) x += 1;
        if (x > global.savexpos) x -= 1;
    }
    if (statetime == 20) {
        ele_fx = instance_create(x, y, oGFElevatorFX);
        with (oGFElevator) event_user(0);
    }
    if (statetime > 20) {
        if (!instance_exists(oGFElevatorFX)) ele_fx = instance_create(x, y, oGFElevatorFX);
        ele_fx.x = x;
        ele_fx.y = y + yVel;
        if (room != elevator_target_room || room == elevator_target_room && point_distance(x, y, elevator_target_x, elevator_target_y) > 32) {
            if (yVel < 0 && yVel > -6) yVel -= 0.2;
            if (yVel > 0 && yVel < 6) yVel += 0.2;
        } else if (abs(yVel) > 0.5) yVel *= 0.8;
        if (room == elevator_target_room) {
            if (point_distance(x, y, elevator_target_x, elevator_target_y) <= 1.5) {
                x = elevator_target_x;
                y = elevator_target_y;
                state = IDLE;
                statetime = 0;
                xVel = 0;
                yVel = 0;
                sfx_stop(sndElevatorLoop);
                with (ele_fx) instance_destroy();
                with (oGFElevator) event_user(1);
            }
        }
    }
} // if (state == GFELEVATOR)
if (state == KNOCKBACK1) {
    if (statetime == 0) {
        canbehit = 0;
        speedboost = 0;
        dash = 0;
        charge = 0;
        yVel = -4;
        if (xVel == 0) {
            if (facing == LEFT) {
                xVel = 2;
            } else xVel = -2;
        }
        unmorphing = 0;
        image_index = 0;
        image_speed = 0.12;
        if (sfx_isplaying(sndSJLoop)) sfx_stop(sndSJLoop);
    }
    yAcc += 0.3;
    xFric = 1;
    if (image_index > 2.5) image_index = 2;
    if (statetime == 30) canbehit = 1;
    if (kJump && kJumpPushedSteps == 0 && canrecover == 0) canrecover = 30;
    if (yVel > 0 && isCollisionBottom(1) > 0) {
        yVel = 0;
        yAcc = 0;
        canbehit = 1;
        turning = 0;
        statetime = 0;
        state = KNOCKBACK1_LAND;
        sfx_play(sndKnockdown);
    }
} // if (state == KNOCKBACK1)
if (state == KNOCKBACK1_LAND) {
    if (statetime == 0) {
        image_index = 0;
        image_speed = 0;
        if (!inwater) {
            smk = instance_create(x, y, oFXAnimSpark);
            smk.image_speed = 0.5;
            smk.hspeed = 0.7;
            smk.additive = 0;
            smk.sprite_index = sSmoke1;
            smk.image_alpha = 0.6;
            smk.image_xscale = 0.7;
            smk.image_yscale = 0.7;
            smk = instance_create(x, y, oFXAnimSpark);
            smk.image_speed = 0.5;
            smk.hspeed = -0.7;
            smk.additive = 0;
            smk.sprite_index = sSmoke1;
            smk.image_alpha = 0.6;
            smk.image_xscale = 0.7;
            smk.image_yscale = 0.7;
        }
        if (inwater) {
            repeat (4 + floor(random(4))) {
                bubble = instance_create(x, y, oLBubble);
                if (instance_exists(bubble)) {
                    bubble.hspeed = random_range(-1.5, 1.5);
                    bubble.vspeed = -0.1 - random(0.5);
                    bubble.alarm[0] = 120 + random(120);
                }
            }
        }
    } // if (statetime == 0)
    if (statetime == 6) {
        image_index = 1;
        if (canrecover > 18 && canrecover <= 30) {
            state = RECOVER;
            statetime = 0;
        }
    }
    if (statetime == 60) image_speed = 0.4;
    if (image_index > 3.5) {
        landing = 1;
        turning = 0;
        image_index = 0;
        statetime = 0;
        state = STANDING;
        idle = 0;
    }
    xFric = 0.7;
    if (isCollisionBottom(1) == 0) {
        state = KNOCKBACK1;
        statetime = 10;
        image_index = 2;
    }
} // if (state == KNOCKBACK1_LAND)
if (state == KNOCKBACK2) {
    if (statetime == 0) {
        yVel = -4;
        unmorphing = 0;
        image_index = 0;
        image_speed = 0;
        canbehit = 0;
        speedboost = 0;
        dash = 0;
        charge = 0;
        if (sfx_isplaying(sndSJLoop)) sfx_stop(sndSJLoop);
    }
    yVel += 0.3;
    xFric = 1;
    if (statetime == 10) canbehit = 1;
    if (kJump && kJumpPushedSteps == 0 && canrecover == 0) canrecover = 30;
    if (yVel > 0 && isCollisionBottom(1) > 0) {
        yVel = 0;
        yAcc = 0;
        canbehit = 1;
        turning = 0;
        statetime = 0;
        state = KNOCKBACK2_LAND;
        PlayLandingSound(get_floor_material());
    }
} // if (state == KNOCKBACK2)
if (state == KNOCKBACK2_LAND) {
    if (statetime == 0) {
        image_index = 3;
        image_speed = 0;
    }
    if (statetime == 4) {
        if (canrecover > 15 && canrecover <= 30) {
            state = RECOVER;
            statetime = 0;
        }
    }
    if (statetime == 25) {
        landing = 1;
        turning = 0;
        image_index = 0;
        statetime = 0;
        state = STANDING;
        idle = 0;
    }
    xFric = 0.85;
    if (isCollisionBottom(1) == 0) {
        state = JUMPING;
        vjump = 1;
        statetime = 0;
        image_index = 0;
    }
    if (fxtimer == 0) {
        smk = instance_create(x - 6 + random(12), y - 4, oFXAnimSpark);
        smk.image_speed = 0.5;
        smk.additive = 0;
        smk.sprite_index = sSmoke1;
        smk.image_alpha = 0.6;
        smk.image_xscale = 0.7;
        smk.image_yscale = 0.7;
    }
} // if (state == KNOCKBACK2_LAND)
if (state == RECOVER) {
    if (statetime == 0) {
        yVel = -2;
        image_index = 6;
        xVel *= 0.3;
        if (kLeft > 0) xVel = -1.5;
        if (kRight > 0) xVel = 1.5;
        yFric = 1;
        xFric = 1;
        sfx_play(sndJump);
    }
    yVel += 0.25;
    if (image_index < 1) {
        state = JUMPING;
        vjump = 1;
        statetime = 0;
        image_index = 0;
        yVel = -0.8;
    }
}
if (state == A4EXPL) {
    if (statetime == 0) {
        image_index = 0;
        image_speed = 0;
        chargebeam = 0;
    }
    if (statetime == 180) {
        x = 128;
        y = 192;
        facing = RIGHT;
        image_index = 1;
    }
    if (statetime > 180 && statetime < 400) {
        if (fxtimer == 0) {
            smk = instance_create(x - 8 + random(16), y - 2, oFXAnimSpark);
            smk.image_speed = 0.5;
            smk.additive = 0;
            smk.sprite_index = sSmoke1;
            smk.image_alpha = 0.6;
            smk.image_xscale = 0.7;
            smk.image_yscale = 0.7;
            smk.vspeed = -1;
            smk.depth = -10;
        }
    }
    if (statetime == 500) image_speed = 0.1;
    if (image_index > 3.5) {
        image_speed = 0;
        if (statetime > 600) {
            landing = 1;
            turning = 0;
            image_index = 0;
            statetime = 0;
            state = STANDING;
            idle = 0;
            mus_change(musArea4B);
        }
    }
} // if (state == A4EXPL)
if (state == WATERJET) {
    yFric = 1;
    xFric = 1;
    if (statetime == 0) {
        if (global.currentsuit == 0) sprite_index = scr_suit_sprites(sMorphBall,sMorphBall_fusion);
        if (global.currentsuit == 1) sprite_index = scr_suit_sprites(sVMorphBall,sMorphBall_fusion);
        if (global.currentsuit == 2) sprite_index = scr_suit_sprites(sGMorphBall,sMorphBall_fusion);
        image_speed = 0;
        image_index = 4;
        xVel = 0;
        xAcc = 0;
        yVel = 0;
        yAcc = 0;
    }
    if (statetime == 120) {
        instance_create(x, y, oA2WaterSpawner);
        w = instance_create(x, y - 8, oFXAnimSpark);
        w.image_speed = 0.6;
        w.additive = 0;
        w.sprite_index = sWaterSplash;
        w.image_alpha = 0.8;
        sfx_play(sndA2WJStart);
        sfx_loop(sndA2WJLoop);
    }
    if (statetime > 120) yVel = -8;
    if (isCollisionTop(1) > 0 && statetime > 140) {
        xVel = 8;
    } else xVel = 0;
    if (statetime == 500) {
        state = AIRBALL;
        statetime = 0;
    }
} // if (state == WATERJET)
if (state == SPIDERBALL && statetime > 1) {
    if ((global.opspdstyle == 1 && kJump && kJumpPushedSteps == 0 || global.opspdstyle == 0 && (kAim && kAimPushedSteps == 0 || kAim2 && kAim2PushedSteps == 0) || global.opspdstyle == 2 && !kAim && !kAim2)){
        if (isCollisionBottom(1) > 0) {
            state = BALL;
        } else state = AIRBALL;
        morphing = 0;
        image_index = 0;
        statetime = 0;
        turning = 0;
        sball = 0;
        sfx_play(sndSBallStart);
    }
}
if (state == AIRBALL && sball == 1 && statetime > 1) {
    if ((global.opspdstyle == 1 && kJump && kJumpPushedSteps == 0 || global.opspdstyle == 0 && (kAim && kAimPushedSteps == 0 || kAim2 && kAim2PushedSteps == 0) || global.opspdstyle == 2 && !kAim && !kAim2)) {
        morphing = 0;
        statetime = 0;
        sball = 0;
        sfx_play(sndSBallStart);
    }
}
if ((inwater == 1 || waterfall > 0) && global.currentsuit < 2 || monster_drain > 0) {
    if (state == SPIDERBALL) {
        state = BALL;
        sfx_stop(sndSBallLoop);
    }
    if (state == AIRBALL && sball == 1) {
        sball = 0;
        sfx_stop(sndSBallLoop);
    }
}

//below is spiderball activation

//test1
if (state == BALL && dash == 0 && global.spiderball == 1 && moverobj == 0 && invincible == 0 && (global.currentsuit < 2 && inwater == 0 && waterfall == 0 || global.currentsuit == 2) && statetime > 1 && monster_drain == 0) {
    if (global.opspdstyle == 1 && kDown && kDownPushedSteps == 0 || global.opspdstyle == 0 && (kAim && kAimPushedSteps == 0 || kAim2 && kAim2PushedSteps == 0) || global.opspdstyle == 2 && (kAim || kAim2)) {
        state = SPIDERBALL;
        sball = 1;
        morphing = 0;
        image_index = 0;
        statetime = 0;
        sbmove = 0;
        turning = 0;
        sfx_play(sndSBallStart);
        sfx_loop(sndSBallLoop);
    }
}
if (global.spiderball == 1 && sball == 0 && moverobj == 0 && invincible == 0 && (global.currentsuit < 2 && inwater == 0 && waterfall == 0 || global.currentsuit == 2) && (state == AIRBALL || state == SJEND && sjball == 1) && statetime > 1 && monster_drain == 0) {
    if (global.opspdstyle == 1 && kDown && kDownPushedSteps == 0 || global.opspdstyle == 0 && (kAim && kAimPushedSteps == 0 || kAim2 && kAim2PushedSteps == 0) || global.opspdstyle == 2 && (kAim || kAim2)) {
        morphing = 0;
        statetime = 0;
        sbmove = 0;
        sball = 1;
        //LoopSoundMono(sndChargeLoop);
        sfx_play(sndSBallStart);
        sfx_loop(sndSBallLoop);
    }
}
//below is grounded morph
if (global.morphball == 1 && unmorphing == 0 && nomorph == 0 && (global.opmrpstyle == 1 && kDown && kDownPushedSteps == 0 && state == DUCKING && (global.opaimstyle == 0 && (kAim == 0 || kAim && aimdirection == 4 || kAim && aimdirection == 5) || global.opaimstyle == 1) || kMorph && kMorphPushedSteps == 0 && (state == STANDING || state == DUCKING || state == RUNNING))) {
    state = BALL;
    morphing = 1;
    image_index = 0;
    statetime = 0;
    turning = 0;
    xVel = 0;
    dash = 0;
    nomorph = 10;
    sfx_play(sndMorph);
}
//below is dreadslide
//if ((slideCooldown < 1)&& (kRight > 0 || kLeft > 0) && state == RUNNING && kMorph && kMorphPushedSteps == 0 && (global.currentsuit < 2 && inwater == 0 && waterfall == 0 || global.currentsuit == 2)){
//    state = DREADSLIDE;
//   statetime = 0;
//    turning = 0;
//    canturn = 0;
//    image_index = 0;
//    speedboost_steps = 0;
//   speedboost = 0;
//}
if (state == DREADSLIDE){
    canturn = 0;
    dash = 0;
    slideCooldown = 15;
    if (facing == RIGHT && xVel < 3 && statetime < 5) {
        xVel = 3;
    }
    if (facing == LEFT && xVel > -3 && statetime < 5) {
        xVel = -3;
    }
    if (facing == RIGHT && statetime == 0 && xVel < 3.5) {
        xAcc = 3.5;
    }
    if (facing == LEFT && xAcc > -3.5 && statetime == 0) {
        xAcc = -3.5;
    }
    if (statetime > 18 && ((facing == RIGHT && xVel < 2.4) ||(facing == LEFT && xVel > -2.4))){
            if (isCollisionUnmorph() == 1) {
                image_index = 0;
                statetime = 0;
                turning = 0;
                idle = 0;
                if (kRight > 0 || kLeft > 0){
                state = RUNNING;
                } else{
                landing = 1;
                state = STANDING;
                }
            }
            else {
                state = BALL;
                morphing = 1;
                image_index = 0;
                statetime = 0;
                turning = 0;
                xVel = 0;
                dash = 0;
                nomorph = 10;
                sfx_play(sndMorph);
            }
            dash = 0;
    }
    if (platformCharacterIs(IN_AIR)){ 
        xAcc = 0;
        xVel *= 0.5
        state = JUMPING;
    }
    if (facing == RIGHT && xVel < 0.7) xVel = 0.7;
    if (facing == LEFT && xVel > -0.7) xVel = -0.7;
}
//below is aerial morph
if (state == JUMPING && statetime > 2 && global.morphball == 1 && unmorphing == 0 && nomorph == 0 && global.classicmode == 0 && (global.opmrpstyle == 1 && kDown && kDownPushedSteps == 0 && aimdirection == 7 || kMorph && kMorphPushedSteps == 0)) {
    state = AIRBALL;
    morphing = 1;
    mockball = 8;
    nomorph = 10;
    image_index = 0;
    statetime = 0;
    turning = 0;
    sball = 0;
    if (yVel > 0 && dash == 0) {
        yVel = 0;
        yAcc = 0;
    }
    //if (!speedboost) {
        //xVel = 0;
        //xAcc = 0;
    //}
    sfx_play(sndMorph);
}
if (kDown && kDownPushedSteps == 0 && platformCharacterIs(ON_GROUND) && state != BALL && state != RUNNING && state != DUCKING && state != DREADSLIDE) {
    if (global.opaimstyle == 0 && (kAim == 0 || kAim && aimdirection == 4 || kAim && aimdirection == 5) || global.opaimstyle == 1) {
        state = DUCKING;
        statetime = 0;
        turning = 0;
        sfx_play(sndCrouch);
    }
}
if (state == BRAKING) {
    dash = 0;
    if (isCollisionBottom(1) == 0 && (isCollisionPlatformBottom(1) == 0 || isCollisionPlatform())) {
        xAcc = xVel / 1.2;
        xVel *= 0.5;
        canturn = 1;
        if (sjball == 0) {
            state = JUMPING;
            vjump = 1;
        }
        if (sjball == 1) state = AIRBALL;
        statetime = 0;
        y += 1;
    }
    if (sjball == 1 && statetime == 15) {
        state = BALL;
        canturn = 1;
        sjball = 0;
    }
}
if (state == BRAKING && statetime > 3 && kDown && kLeft == 0 && kRight == 0) {
    if (sjball == 0) state = DUCKING;
    if (sjball == 1) state = BALL;
    statetime = 0;
    turning = 0;
    dash = 0;
    canturn = 1;
    charge = 240;
    sfx_loop(sndSBChargeLoop);
    expl = instance_create(x, y, oFXAnimSpark);
    expl.image_speed = 0.5;
    expl.sprite_index = sSBChargeFX;
    expl.depth = -150;
}
//below is uncrouch
if (kUp && kUpPushedSteps == 0 && state == DUCKING) {
    if (kAim == 0 || kAim && aimdirection == 2 || kAim && aimdirection == 3 || global.opaimstyle == 1) {
        state = STANDING;
        statetime = 0;
        idle = 0;
        turning = 0;
//        xVel = 0;
//       xAcc = 0;
        noaimup = 5;
        unmorphing = 0;
    }
}
//below is unmorphing
if (state == BALL && morphing == 0 && dash == 0 && moverobj == 0 && nomorph == 0 && (global.opmrpstyle == 1 && kUp && kUpPushedSteps == 0 || kMorph && kMorphPushedSteps == 0)) {
    if (isCollisionUnmorph() == 2) x -= 3;
    if (isCollisionUnmorph() == 3) x += 3;
    if (isCollisionUnmorph() == 1) {
        if (kRight == 0 && kLeft == 0){
            state = DUCKING;
            unmorphing = 1;
        }
        else {
            state = RUNNING;
            statetime = 0;
            image_index = 0;
            unmorphing = 0;
        }
        statetime = 0;
        turning = 0;
        nomorph = 10;
        sjball = 0;
        image_index = 0;
        sfx_play(sndUnMorph);
        if (facing == RIGHT) {
            aimdirection = 0;
        } else aimdirection = 1;
    }
}
if (state == AIRBALL && morphing == 0 && moverobj == 0 && nomorph == 0 && (global.opmrpstyle == 1 && kUp && kUpPushedSteps == 0 || kMorph && kMorphPushedSteps == 0)) {
    if (isCollisionUnmorph() == 2) x -= 3;
    if (isCollisionUnmorph() == 3) x += 3;
    if (isCollisionUnmorph() == 1) {
        state = JUMPING;
        statetime = 0;
        turning = 0;
        vjump = 1;
        hijump = 0;
        unmorphing = 1;
        nomorph = 10;
        image_index = 0;
        if (!speedboost && platformCharacterIs(IN_AIR) ) {
            xVel = 0;
            xAcc = 0;
        }
        cmmorph = 10;
        sfx_play(sndUnMorph);
        sball = 0;
        sjball = 0;
        if (facing == RIGHT) {
            aimdirection = 0;
        } else aimdirection = 1;
    }
} // if (state == AIRBALL && morphing == 0 && moverobj == 0 && nomorph == 0 && (global.opmrpstyle == 1 && kUp && kUpPushedSteps == 0 || kMorph && kMorphPushedSteps == 0))
if (xVel == 0 && xAcc == 0 && state == RUNNING) {
    state = STANDING;
    statetime = 0;
    firing = 0;
    idle = 0;
}
if (xAcc != 0 && state == STANDING && canrun == 1) {
    state = RUNNING;
    statetime = 0;
    image_index = 0;
    unmorphing = 0;
}
if (yVel < 0 && platformCharacterIs(IN_AIR) && state != BALL && state != AIRBALL) state = JUMPING;
if (state == JUMPING && statetime == 0 && vjump == 0 && (kUp || kDown)) lockspinjump = 1;
if (state == JUMPING && statetime > 4 && vjump == 0 && !kUp && !kDown) {
    lockspinjump = 0;
    if (facing == RIGHT) {
        aimdirection = 0;
    } else aimdirection = 1;
}
if (state == JUMPING && vjump == 0 && walljumping == 0 && statetime > 4 && justwalljumped == 0) {
    if ((kUp || kDown) && kLeft == 0 && kRight == 0 && novjump == 0 && lockspinjump == 0 || kFire && kFirePushedSteps == 0 && nofire == 0 || chargebeam > 0 && !kFire || aimlock) {
        vjump = 1;
        novjump = 10;
        canturn = 1;
        turning = 0;
        hijump = 0;
        statetime = 0;
        if (global.spacejump && yVel > 0) yVel = -1.5;
    }
}
if (platformCharacterIs(IN_AIR) && state != AIRBALL && position_meeting(x, y + 10, oSolid) == false && position_meeting(x, y - 32, oSolid) == false && yVel > 0 && y > 32 && global.powergrip == 1) {
    if (facing == RIGHT && position_meeting(x + 7, y - 26, oSolid) == true && position_meeting(x + 7, y - 26, oMovingSolid) == false && position_meeting(x + 7, y - 32, oSolid) == false && kRight > 0 && dash == 0) {
        state = GRIP;
        statetime = 0;
        turning = 0;
        image_index = 0;
        canturn = 0;
        canclimb = 0;
        aimdirection = 0;
        y += 1;
        move_snap(16, 16);
        x -= 7;
        y -= 5;
        sfx_play(sndGrab);
    }
    if (facing == LEFT && position_meeting(x - 7, y - 26, oSolid) == true && position_meeting(x - 7, y - 26, oMovingSolid) == false && position_meeting(x - 7, y - 32, oSolid) == false && kLeft > 0 && dash == 0) {
        state = GRIP;
        statetime = 0;
        turning = 0;
        image_index = 0;
        canturn = 0;
        canclimb = 0;
        aimdirection = 1;
        y += 1;
        move_snap(16, 16);
        x += 7;
        y -= 5;
        sfx_play(sndGrab);
    }
} // if (platformCharacterIs(IN_AIR) && state != AIRBALL && position_meeting(x, y + 10, oSolid) == false && position_meeting(x, y - 32, oSolid) == false && yVel > 0 && y > 32 && global.powergrip == 1)
if (state == GRIP && facing == RIGHT) {
    if (kJump && kJumpPushedSteps == 1 && kRight == 0 && kLeft == 0) {
        state = JUMPING;
        statetime = 0;
        vjump = 1;
        canturn = 1;
        if (aimdirection == 0) yAcc += initialJumpAcc * 0.75;
        if (aimdirection != 0) {
            yVel = 0;
            facing = LEFT;
        }
        sfx_play(sndJump);
    }
    if (kJump && kJumpPushedSteps == 1 && kLeft > 0 && turning == 0) {
        state = JUMPING;
        statetime = 0;
        facing = LEFT;
        aimdirection = 1;
        xAcc = -2;
        yAcc += initialJumpAcc;
        hijump = 1;
        vjump = 0;
        canturn = 1;
        LoopSoundMono(spinjump_sound);
    }
    if (kUp && kLeft == 0 && kAim == 0 && kAim2 == 0) {
        canclimb += 1;
    } else canclimb = 0;
    if ((kJump && kJumpPushedSteps == 1 && kRight > 0 || kUp && canclimb > 30 && statetime > 30) && (!position_meeting(x + 7, y - 46, oSolid) || position_meeting(x + 7, y - 46, oSolid) && global.morphball)) {
        state = CLIMBING;
        statetime = 0;
        aimdirection = 0;
        image_index = 0;
        sfx_play(sndPullUp);
    }
    if (!position_meeting(x + 7, y - 26, oSolid)) {
        state = JUMPING;
        statetime = 0;
        vjump = 1;
        canturn = 1;
        yVel = 0;
    }
} // if (state == GRIP && facing == RIGHT)
if (state == GRIP && facing == LEFT) {
    if (kJump && kJumpPushedSteps == 1 && kRight == 0 && kLeft == 0) {
        state = JUMPING;
        statetime = 0;
        vjump = 1;
        canturn = 1;
        if (aimdirection == 1) yAcc += initialJumpAcc * 0.75;
        if (aimdirection != 1) {
            yVel = 0;
            facing = RIGHT;
        }
        sfx_play(sndJump);
    }
    if (kJump && kJumpPushedSteps == 1 && kRight > 0 && turning == 0) {
        state = JUMPING;
        statetime = 0;
        facing = RIGHT;
        aimdirection = 0;
        xAcc = 2;
        yAcc += initialJumpAcc;
        hijump = 1;
        vjump = 0;
        canturn = 1;
        LoopSoundMono(spinjump_sound);
    }
    if (kUp && kRight == 0 && kAim == 0 && kAim2 == 0) {
        canclimb += 1;
    } else canclimb = 0;
    if ((kJump && kJumpPushedSteps == 1 && kLeft > 0 || kUp && canclimb > 30 && statetime > 30) && (!position_meeting(x - 8, y - 46, oSolid) || position_meeting(x - 8, y - 46, oSolid) && global.morphball)) {
        state = CLIMBING;
        statetime = 0;
        aimdirection = 1;
        image_index = 0;
        sfx_play(sndPullUp);
    }
    if (!position_meeting(x - 8, y - 26, oSolid)) {
        state = JUMPING;
        statetime = 0;
        vjump = 1;
        canturn = 1;
        yVel = 0;
    }
} // if (state == GRIP && facing == LEFT)
if (state == CLIMBING) {
    canturn = 0;
    canbehit = 0;
    if (statetime == 2) y -= 6;
    if (statetime == 3) y -= 6;
    if (statetime == 5) y -= 2;
    if (statetime == 6) y -= 2;
    if (facing == RIGHT) {
        if (statetime == 8) {
            y -= 1;
            x += 4;
        }
        if (statetime == 9) {
            y -= 1;
            x += 3;
        }
        if (statetime == 10) {
            y -= 2;
            x += 2;
        }
        if (statetime == 11) {
            y -= 2;
            x += 2;
        }
        if (statetime == 12) {
            y -= 2;
            x += 1;
        }
        if (statetime == 13) {
            y -= 2;
            x += 1;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (statetime == 8) {
            y -= 1;
            x -= 4;
        }
        if (statetime == 9) {
            y -= 1;
            x -= 3;
        }
        if (statetime == 10) {
            y -= 2;
            x -= 2;
        }
        if (statetime == 11) {
            y -= 2;
            x -= 2;
        }
        if (statetime == 12) {
            y -= 2;
            x -= 1;
        }
        if (statetime == 13) {
            y -= 2;
            x -= 1;
        }
    } // if (facing == LEFT)
    if (statetime == 14) {
        if (position_meeting(x, y - 18, oSolid) == false) {
            y -= 1;
            landing = 1;
            state = STANDING;
            statetime = 0;
            idle = 0;
            image_index = 0;
            canturn = 1;
            if (facing == RIGHT && kLeft > 0) {
                facing = LEFT;
                turning = 1;
                landing = 0;
            }
            if (facing == LEFT && kRight > 0) {
                facing = RIGHT;
                turning = 1;
                landing = 0;
            }
        }
        if (position_meeting(x, y - 18, oSolid) == true) {
            y -= 1;
            state = BALL;
            statetime = 0;
            image_index = 0;
            morphing = 1;
            canturn = 1;
            sfx_play(sndMorph);
        }
        canbehit = 1;
    } // if (statetime == 14)
    if (statetime > 6 && (isCollisionRightSlope(1) || isCollisionLeftSlope(1))) y -= 1;
    if (statetime >= 12 && (isCollisionRightSlope(1) || isCollisionLeftSlope(1))) y -= 1;
} // if (state == CLIMBING)
if (state == GRABBEDGAMMA) {
    yVel = 0;
    xVel = 0;
    x = round(oMGamma.x + oMGamma.legba1x + oMGamma.legba2x + 8 * oMGamma.facing);
    y = round(oMGamma.y + oMGamma.legba1y + oMGamma.legba2y + 24);
    invincible = 5;
    canturn = 0;
    
    if (global.currentsuit == 0) global.playerhealth -= (global.mod_grabbedgammaPS * oControl.mod_diffmult);
    if (global.currentsuit == 1) global.playerhealth -= (global.mod_grabbedgammaVS * oControl.mod_diffmult);
    //if (global.currentsuit == 2) global.playerhealth -= global.mod_grabbedgammaGS * oControl.mod_diffmult;;
    if (global.currentsuit == 2) {                                                      
        if(global.item[5] == 0) {
            global.playerhealth -= (global.mod_grabbedgammaVS * oControl.mod_diffmult);
        } else {                  
            global.playerhealth -= (global.mod_grabbedgammaGS * oControl.mod_diffmult);
        }
    } //added
    
    if (global.playerhealth <= 0) with (oControl) event_user(1);
    if (statetime == 0) {
        sfx_stop_loops();
        sfx_loop(sndMGammaElecLoop);
    }
    if (statetime == 100 || oMGamma.state != 9 && statetime > 1) {
        state = KNOCKBACK1;
        statetime = -1;
        if (oMGamma.facing == 1) {
            facing = LEFT;
        } else facing = RIGHT;
        sfx_stop(sndMGammaElecLoop);
    }
}
if (state == LOCKEDBALL) {
    yVel = 0;
    xVel = 0;
}
if (state == GRABBED) {
    yVel = 0;
    xVel = 0;
    canturn = 0;
    if (statetime > 300) {
        state = KNOCKBACK1;
        statetime = -1;
        if (facing == LEFT) {
            xVel = 2;
        } else xVel = -2;
    }
}
if (state == GRABBEDOMEGA) {
    if (statetime == 0) {
        canbehit = 0;
        speedboost = 0;
        dash = 0;
        charge = 0;
        yVel = -0.3;
        xVel = oMOmega.xVel * 1.5;
        unmorphing = 0;
        image_index = 0;
        image_speed = 0.12;
        if (sfx_isplaying(sndSJLoop)) sfx_stop(sndSJLoop);
    }
    yAcc += 0.3;
    xFric = 1;
    if (image_index > 2.5) image_index = 2;
    if (statetime == 30) canbehit = 1;
    if (kJump && kJumpPushedSteps == 0 && canrecover == 0) canrecover = 30;
    if (yVel > 0 && isCollisionBottom(1) > 0) {
        yVel = 0;
        yAcc = 0;
        xVel *= 2;
        canbehit = 1;
        turning = 0;
        statetime = 0;
        state = KNOCKBACK1_LAND;
        sfx_play(sndKnockdown);
    }
} // if (state == GRABBEDOMEGA)
if (state == GRABBEDQUEEN) {
    if (statetime == 0) {
        canbehit = 0;
        speedboost = 0;
        dash = 0;
        charge = 0;
        yVel = 0;
        xVel = 0;
        unmorphing = 0;
        image_index = 0;
        image_speed = 0;
        queen_drain = 1;
        if (sfx_isplaying(sndSJLoop)) sfx_stop(sndSJLoop);
    }
    facing = LEFT;
    aimdirection = 1;
    aimlock = 1;
    if (statetime == 50) image_index = 1;
    if (statetime == 55) image_index = 2;
    if (statetime > 60 && global.morphball == 1 && (kDown && kDownPushedSteps == 0 || kMorph && kMorphPushedSteps == 0)) {
        state = GRABBEDQUEENMORPH;
        morphing = 1;
        image_index = 0;
        statetime = 0;
        turning = 0;
        xVel = 0;
        dash = 0;
        nomorph = 10;
        sfx_play(sndMorph);
        aimlock = 0;
    }
    if (oQueen.state == 100) {
        state = JUMPING;
        statetime = 0;
        vjump = 1;
        x = round(x);
        y = round(y);
        aimlock = 0;
    }
} // if (state == GRABBEDQUEEN)
if (state == GRABBEDQUEENMORPH) {
    if (statetime == 0) {
        image_speed = 0.5;
        queen_drain = 1;
    }
    if ((statetime > 10) && (kLeft > 0)) {
        state = GRABBEDQUEENBELLY;
        statetime = 0;
    }
    if (oQueen.state == 100) {
        state = AIRBALL;
        statetime = 0;
        x = round(x);
        y = round(y);
    }
}
if (state == GRABBEDQUEENBELLY) {
    if (statetime == 0) {
        hspeed = -1;
        vspeed = -0.21;
        queen_drain = 1;
    }
    if (statetime < 60) y = clamp(y, 0, oQueenHead.y + 24);
    if (statetime > 60 && instance_exists(oQueen)) {
        hspeed = 0;
        vspeed = 0;
        x = lerp(oQueen.x + oQueen.belly_x, x, 0.01);
        y = lerp(oQueen.y + oQueen.belly_y, y, 0.01);
        if (oQueen.state == 100) {
            state = AIRBALL;
            statetime = 0;
            x = round(x);
            y = round(y);
            queen_drain = 0;
        }
    }
    if (!instance_exists(oQueen)) {
        state = AIRBALL;
        statetime = 0;
        x = round(x);
        y = round(y);
        queen_drain = 0;
    }
} // if (state == GRABBEDQUEENBELLY)
moverobj = 0;
if (global.moverobj && (global.currentsuit < 2)) {
    if (collision_line(round(x - 5), round(y - 2), round(x + 5), round(y - 2), oMoverUp, false, true) > 0 && state != CLIMBING) {
        if (state != AIRBALL) {
            state = AIRBALL;
            statetime = 0;
            canturn = 1;
            sball = 0;
        }
        yVel = -5;
        moverobj = 1;
    }
    if (collision_line(round(x - 5), round(y - 2), round(x + 5), round(y - 2), oMoverDown, false, true) > 0 && state != CLIMBING) {
        if (state != AIRBALL) {
            state = AIRBALL;
            statetime = 0;
            canturn = 1;
            sball = 0;
        }
        yVel = 5;
        moverobj = 1;
    }
    if (collision_line(round(x - 5), round(y - 2), round(x + 5), round(y - 2), oMoverLeft, false, true) > 0 && state != CLIMBING) {
        if (state != AIRBALL) {
            state = AIRBALL;
            statetime = 0;
            canturn = 1;
            sball = 0;
        }
        xVel = -5;
        moverobj = 1;
        fixedx = 20;
        facing = LEFT;
    }
    if (collision_line(round(x - 5), round(y - 2), round(x + 5), round(y - 2), oMoverRight, false, true) > 0 && state != CLIMBING) {
        if (state != AIRBALL) {
            state = AIRBALL;
            statetime = 0;
            canturn = 1;
            sball = 0;
        }
        xVel = 5;
        moverobj = 1;
        fixedx = 20;
        facing = RIGHT;
    }
    if (collision_line(round(x - 5), round(y - 2), round(x + 5), round(y - 2), oMoverLeftUp, false, true) > 0 && state != CLIMBING) {
        if (state != AIRBALL) {
            state = AIRBALL;
            statetime = 0;
            canturn = 1;
            sball = 0;
        }
        xVel = -5;
        yVel = -5;
        moverobj = 1;
        fixedx = 20;
        fixedy = 20;
        facing = LEFT;
    }
} // if (global.moverobj && global.currentsuit < 2)
if (global.classicmode) {
    if ((cmhurt > 0 || cmmorph > 0) && kJump && kJumpPushedSteps == 0 && isCollisionBottom(1) == 0) {
        if (sjball == 0) {
            state = JUMPING;
            vjump = 1;
        }
        if (sjball && global.jumpball) state = AIRBALL;
        canturn = 1;
        statetime = 0;
        yVel = -7;
        cmhurt = 0;
        cmmorph = 0;
    }
}
if (state == DUCKING || state == GRIP || state == CLIMBING || state == SJSTART || state == SJEND || state == IDLE) xFric = 0;
if (state == STANDING && kRight == 0 && kLeft == 0){
    xFric = 0;
}
if (state == RUNNING) {
    if (statetime > 5) {
    if (dash == 0) xFric = frictionRunningX;
    if (dash > 0 && dash <= 25) xFric = frictionRunningX + dash * 0.0065;
    if (dash >25 && dash <=39) xFric = frictionRunningX + 25 * 0.0065;
    if (dash > 39 && dash <= 45) xFric = frictionRunningX + dash * 0.006;
    if (turning == 1) xFric = 0;
    if (shinespark) xFric = 1;
    } else {
    xFric = 1;    
    }
}
if (state == BRAKING) xFric = frictionRunningX * 2.8;
if (state == SUPERJUMP) xFric = 1;
if (state == BALL) {
    if (dash == 0) xFric = frictionRunningX * 2;
    if (dash > 0 && speedboost == 0){
        if (dash > 0 && dash <= 25) xFric = frictionRunningX + dash * 0.0065 * 2;
        if (dash >25 && dash <=39) xFric = frictionRunningX + 25 * 0.0065 * 2;
        if (dash > 39 && dash <= 45) xFric = frictionRunningX + dash * 0.006 * 2;
    }
    if (shinespark) xFric = 1;
}
if (state == AIRBALL) {
    xFric = 0.5;
    if (dash > 0) xFric = 1;
    if (moverobj) {
        xFric = 1;
        yFric = 1;
    }
}
if (state == JUMPING) {
    if (vjump == 1) xFric = frictionJumpingX;
    if (vjump == 0) xFric = 1;
    if (walljumping == 1 || state == SPIDERBALL) xFric = 0;
}
if (state == HURT) xFric = frictionJumpingX;
if (walljumping == 1 || state == GRIP || state == CLIMBING || state == SPIDERBALL) {
    yFric = 0;
} else yFric = 1;
if ((inwater == 1 || waterfall > 0) && global.currentsuit != 2 || monster_drain > 0) {
    if (state != RUNNING) xFric *= 0.7;
    yFric *= 0.95;
}
if (state == DREADSLIDE){
    xFric = 0.9;
}
if (xAcc > xAccLimit) {
    xAcc = xAccLimit;
} else if (xAcc < -1 * xAccLimit) xAcc = -1 * xAccLimit;
if (yAcc > yAccLimit) {
    yAcc = yAccLimit;
} else if (yAcc < -1 * yAccLimit) yAcc = -1 * yAccLimit;
xVel += xAcc;
yVel += yAcc;
xAcc = 0;
yAcc = 0;
xVel *= xFric;
yVel *= yFric;
if (xVel > xVelLimit) {
    xVel = xVelLimit;
} else if (xVel < -1 * xVelLimit) xVel = -1 * xVelLimit;
if (yVel > yVelLimit && (inwater == 0 && waterfall == 0 || global.currentsuit >= 2)) yVel = yVelLimit;
if (yVel > yVelLimit / 2 && (inwater == 1 || waterfall > 0) && global.currentsuit < 2) {
    yVel = yVelLimit / 2;
} else if (yVel < JumpVelLimit) yVel = JumpVelLimit;
if (approximatelyZero(xVel)) xVel = 0;
if (approximatelyZero(yVel)) yVel = 0;
if (approximatelyZero(xAcc)) xAcc = 0;
if (approximatelyZero(yAcc)) yAcc = 0;
if (maxSlope * abs(xVel) > 0 && (platformCharacterIs(ON_GROUND) || state == BRAKING)) {
    slopeYPrev = y;
    for (y = y; y >= slopeYPrev - maxSlope * 2; y -= 1) {
        if (isCollisionTop(1)) break;
    }
    slopeChangeInY = slopeYPrev - y;
} else slopeChangeInY = 0;
if (speedmultiplier != 1) {
    xVel *= speedmultiplier;
    yVel *= speedmultiplier;
}
if ((instance_exists(oEventCamera) || instance_exists(oEventCamera2)) && global.enablecontrol == 0) xVel = 0;
if (maxSlope * abs(xVel) > 0 && (platformCharacterIs(ON_GROUND) || state == BRAKING)) {
    xPrev = x;
    yPrev = slopeYPrev;
    yPrevHigh = y;
    moveTo(xVel, yVel + slopeChangeInY);
} else moveTo(xVel, yVel);
if (isCollisionBottom(1) == 0 && maxDownSlope * abs(xVelInteger) > 0 && (platformCharacterIs(ON_GROUND) || state == BRAKING)) {
    upYPrev = y;
    for (y = y; y <= upYPrev + maxDownSlope * abs(xVelInteger); y += 1) {
        if (isCollisionBottom(1)) {
            upYPrev = y;
            break;
        }
    }
    y = upYPrev;
}
statePrevPrev = statePrev;
statePrev = state;
if (image_speed > 1) image_speed = 1;
if (state != GRIP) {
    if (facing == RIGHT) {
        if (aimdirection == 1) aimdirection = 0;
        if (aimdirection == 3) aimdirection = 2;
        if (aimdirection == 5) aimdirection = 4;
    }
    if (facing == LEFT) {
        if (aimdirection == 0) aimdirection = 1;
        if (aimdirection == 2) aimdirection = 3;
        if (aimdirection == 4) aimdirection = 5;
    }
}
if (state != GRIP && state != DREADSLIDE && aimlock == 0) {
    if (kAim == 0 && turning == 0) {
        if (kRight > 0 && kUp == 0 && kDown == 0) aimdirection = 0;
        if (kLeft > 0 && kUp == 0 && kDown == 0) aimdirection = 1;
        if (kRight > 0 && kUp && state != DUCKING && state != BALL) aimdirection = 2;
        if (kLeft > 0 && kUp && state != DUCKING && state != BALL) aimdirection = 3;
        if (kRight > 0 && kDown) aimdirection = 4;
        if (kLeft > 0 && kDown) aimdirection = 5;
        if (kUp && kLeft == 0 && kRight == 0 && noaimup == 0 && state != RUNNING) {
            aimdirection = 6;
            idle = 0;
        }
    }
    if (global.opaimstyle == 0 && turning == 0) {
        if (kAim) {
            idle = 0;
            if (facing == RIGHT) {
                if (aimdirection == 5) aimdirection = 4;
                if (aimdirection != 2 && aimdirection != 4) aimdirection = 2;
                if (kDown && aimdirection == 2) aimdirection = 4;
                if (kUp && aimdirection == 4) aimdirection = 2;
            }
            if (facing == LEFT) {
                if (aimdirection == 4) aimdirection = 5;
                if (aimdirection != 3 && aimdirection != 5) aimdirection = 3;
                if (kDown && aimdirection == 3) aimdirection = 5;
                if (kUp && aimdirection == 5) aimdirection = 3;
            }
        }
        if (kDown == 1 && kLeft == 0 && kRight == 0 && kAim == 0 && kAim2 == 0 && platformCharacterIs(IN_AIR)) aimdirection = 7;
        if (kRight == 0 && kLeft == 0 && kAim == 0 && kAim2 == 0 && (kUp == 0 && platformCharacterIs(ON_GROUND) || kUp == 0 && state == JUMPING && aimdirection != 6 && aimdirection != 7 || state == DUCKING)) {
            if (facing == RIGHT) aimdirection = 0;
            if (facing == LEFT) aimdirection = 1;
        }
    }
    if (global.opaimstyle == 1 && turning == 0) {
        if (kAim) {
            idle = 0;
            if (facing == RIGHT) aimdirection = 2;
            if (facing == LEFT) aimdirection = 3;
        }
        if (kAim2 && !kAim) {
            idle = 0;
            if (facing == RIGHT) aimdirection = 4;
            if (facing == LEFT) aimdirection = 5;
        }
        if (kAim && kAim2 && state != RUNNING) aimdirection = 6;
        if (kDown == 1 && kLeft == 0 && kRight == 0 && kAim == 0 && kAim2 == 0 && platformCharacterIs(IN_AIR)) aimdirection = 7;
        if (kRight == 0 && kLeft == 0 && kAim == 0 && kAim2 == 0 && (kUp == 0 && platformCharacterIs(ON_GROUND) || kUp == 0 && state == JUMPING && aimdirection != 6 && aimdirection != 7 || state == DUCKING)) {
            if (facing == RIGHT) aimdirection = 0;
            if (facing == LEFT) aimdirection = 1;
        }
    }
} // if (state != GRIP && state != DREADSLIDE && aimlock == 0)
if (state == GRIP && aimlock == 0) {
    if (facing == RIGHT) {
        if (kRight > 0 && kRightPushedSteps == 0 && (global.opaimstyle == 0 && kAim == 0 || kAim == 0 && kAim2 == 0)) {
            if (aimdirection != 0) turning = 1;
            aimdirection = 0;
        }
        if (kLeft > 0 && kUp == 0 && kDown == 0) {
            if (aimdirection == 0) turning = 1;
            aimdirection = 1;
        }
        if (kLeft > 0 && kUp) {
            if (aimdirection == 0) turning = 1;
            aimdirection = 3;
        }
        if (kLeft > 0 && kDown) {
            if (aimdirection == 0) turning = 1;
            aimdirection = 5;
        }
        if (kUp && kLeft == 0 && kRight == 0) {
            if (aimdirection == 0) turning = 1;
            aimdirection = 6;
        }
        if (kDown && kLeft == 0 && kRight == 0) {
            if (aimdirection == 0) turning = 1;
            aimdirection = 7;
        }
        if (global.opaimstyle == 0 && kAim) {
            if (aimdirection != 3 && aimdirection != 5) {
                if (aimdirection == 0) turning = 1;
                aimdirection = 3;
            }
            if (kDown && aimdirection == 3) {
                if (aimdirection == 0) turning = 1;
                aimdirection = 5;
            }
            if (kUp && aimdirection == 5) {
                if (aimdirection == 0) turning = 1;
                aimdirection = 3;
            }
        }
        if (global.opaimstyle == 1) {
            if (kAim && !kAim2) {
                if (aimdirection == 0) turning = 1;
                aimdirection = 3;
            }
            if (kAim2 && !kAim) {
                if (aimdirection == 0) turning = 1;
                aimdirection = 5;
            }
            if (kAim && kAim2) {
                if (aimdirection == 0) turning = 1;
                aimdirection = 6;
            }
        }
        if (kLeft == 0 && aimdirection != 6 && (aimdirection == 3 || aimdirection == 5 || global.opaimstyle == 1 && aimdirection == 6) && (global.opaimstyle == 0 && kAim == 0 || kAim == 0 && kAim2 == 0)) aimdirection = 1;
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (kLeft > 0 && kLeftPushedSteps == 0 && kAim == 0) {
            if (aimdirection != 1) turning = 1;
            aimdirection = 1;
        }
        if (kRight > 0 && kUp == 0 && kDown == 0) {
            if (aimdirection == 1) turning = 1;
            aimdirection = 0;
        }
        if (kRight > 0 && kUp) {
            if (aimdirection == 1) turning = 1;
            aimdirection = 2;
        }
        if (kRight > 0 && kDown) {
            if (aimdirection == 1) turning = 1;
            aimdirection = 4;
        }
        if (kUp && kLeft == 0 && kRight == 0) {
            if (aimdirection == 1) turning = 1;
            aimdirection = 6;
        }
        if (kDown && kLeft == 0 && kRight == 0) {
            if (aimdirection == 1) turning = 1;
            aimdirection = 7;
        }
        if (global.opaimstyle == 0 && kAim) {
            if (aimdirection != 2 && aimdirection != 4) {
                if (aimdirection == 1) turning = 1;
                aimdirection = 2;
            }
            if (kDown && aimdirection == 2) {
                if (aimdirection == 1) turning = 1;
                aimdirection = 4;
            }
            if (kUp && aimdirection == 4) {
                if (aimdirection == 1) turning = 1;
                aimdirection = 2;
            }
        }
        if (global.opaimstyle == 1) {
            if (kAim && !kAim2) {
                if (aimdirection == 1) turning = 1;
                aimdirection = 2;
            }
            if (kAim2 && !kAim) {
                if (aimdirection == 1) turning = 1;
                aimdirection = 4;
            }
            if (kAim && kAim2) {
                if (aimdirection == 1) turning = 1;
                aimdirection = 6;
            }
        }
        if (kRight == 0 && aimdirection != 6 && (aimdirection == 2 || aimdirection == 4 || global.opaimstyle == 1 && aimdirection == 6) && (global.opaimstyle == 0 && kAim == 0 || kAim == 0 && kAim2 == 0)) aimdirection = 0;
    } // if (facing == LEFT)
} // if (state == GRIP && aimlock == 0)
if (state == DUCKING && turning && (global.opaimstyle == 0 && kAim == 0 || kAim == 0 && kAim2 == 0)) {
    if (facing == RIGHT) aimdirection = 0;
    if (facing == LEFT) aimdirection = 1;
}
if (chargebeam > 0 && !kFire) {
    if (state == JUMPING && vjump == 0 && walljumping == 0) vjump = 1;
    if (state == GRIP && facing == RIGHT && aimdirection == 0) aimdirection = 1;
    if (state == GRIP && facing == LEFT && aimdirection == 1) aimdirection = 0;
}
if (aimlock) {
    canturn = 0;
    if (aimdirection == 7 && state == STANDING) {
        if (facing == RIGHT) {
            aimdirection = 0;
        } else aimdirection = 1;
    }
} else if (!walljumping) canturn = 1;
chStepSetSprite();
if (speedmultiplier != 1) image_speed *= speedmultiplier;
chStepFire();
if (global.watertype == 1 && inwater && global.currentsuit < 2) {
    if (burning == 0) sfx_loop(sndLavaLoop);
    burning = 1;
    if (global.currentsuit == 0) global.playerhealth -= global.mod_lavaburnPS * oControl.mod_diffmult;
    if (global.currentsuit == 1) global.playerhealth -= global.mod_lavaburnVS * oControl.mod_diffmult;
    if (global.playerhealth <= 0) with (oControl) event_user(1);
} else burning = 0;
if (plantdrain > 0) {
    plantdrain -= 1;
    if ((instance_exists(oMeboid) || instance_exists(oMeboid2)) && (state != 60)) { // MEBOIDS state 60 is warp pipes
        switch global.currentsuit {
            case 0: global.playerhealth -= 0.4*oControl.mod_diffmult; break;
            case 1: global.playerhealth -= 0.3*oControl.mod_diffmult; break;
            case 2: global.playerhealth -= 0.2*oControl.mod_diffmult; break;
        }
        if (global.playerhealth <= 0) with (oControl) event_user(1); // so we don't get Druids invuln glitch
        // oh man 1.4.4
        
    } else if (state != 60) { // druid don't break this pls
        if (global.currentsuit == 0) global.playerhealth -= global.mod_plaintdrainPS * oControl.mod_diffmult;
        if (global.currentsuit == 1) global.playerhealth -= global.mod_plaintdrainVS * oControl.mod_diffmult;
        if (global.playerhealth <= 0) with (oControl) event_user(1);
    }
    if ((state != 60) && (plantdrainfx == 0)) {
        sfx_loop(sndPlantLoop);
        plantdrainfx = 1;
    }
} else plantdrainfx = 0;
if (monster_drain > 0) {
    monster_drain -= 1;
    dash = 0;
    speedboost = 0;
    if (global.currentsuit == 0 && oControl.mod_monstersextreme == 0) global.playerhealth -= global.mod_monstersdrainPS * oControl.mod_diffmult;
    else if (global.currentsuit == 0 && oControl.mod_monstersextreme != 0) global.playerhealth -= global.mod_monstersdrainPS * 4;
    if (global.currentsuit == 1 && oControl.mod_monstersextreme == 0) global.playerhealth -= global.mod_monstersdrainVS * oControl.mod_diffmult;
    else if (global.currentsuit == 1 && oControl.mod_monstersextreme != 0) global.playerhealth -= global.mod_monstersdrainVS * 4;
    //if (global.currentsuit > 1) global.playerhealth -= global.mod_monstersdrainGS * oControl.mod_diffmult;
    if (global.currentsuit == 2 && oControl.mod_monstersextreme == 0) 
    {                                                      
        if(global.item[5] == 0) 
            global.playerhealth -= global.mod_monstersdrainVS * oControl.mod_diffmult;
        else                   
            global.playerhealth -= global.mod_monstersdrainGS * oControl.mod_diffmult;
    }
    else if (global.currentsuit == 2 && oControl.mod_monstersextreme != 0) 
    {                                                      
        if(global.item[5] == 0) 
            global.playerhealth -= global.mod_monstersdrainVS * 4;
        else                   
            global.playerhealth -= global.mod_monstersdrainGS * 4;
    } //added
    
    
    if (global.playerhealth <= 0) with (oControl) event_user(1);
    if (monster_drainfx == 0) {
        sfx_loop(sndDrainLoop);
        monster_drainfx = 1;
    }
    xVel *= 0.4;
} else monster_drainfx = 0;
if (queen_drain > 0) {
    dash = 0;
    speedboost = 0;
    global.playerhealth -= 0.1;
    if (global.playerhealth <= 0) with (oControl) event_user(1);
    if (queen_drainfx == 0) {
        sfx_loop(sndDrainLoop);
        queen_drainfx = 1;
    }
} else queen_drainfx = 0;
if (state != BALL && state != AIRBALL && state != SPIDERBALL && state != SUPERJUMP) setCollisionBounds(-6, -27, 6, 0);
if (state == BALL) setCollisionBounds(-6, -11, 6, 0);
if (state == DREADSLIDE) setCollisionBounds(-6, -11, 10, 0);
if (state == SPIDERBALL || state == AIRBALL || state == WATERJET || state == KNOCKBACK1 || state == KNOCKBACK2 || (state == HURT || state == BRAKING || state == SJSTART || state == SJEND) && sjball == 1) setCollisionBounds(-6, -13, 6, 0);
if (state == SUPERJUMP && sjdir != 0 && sjball == 0) setCollisionBounds(-6, -22, 6, 0);
if (state == SUPERJUMP && (sjdir == 3 || sjdir == 4) && sjball == 0) setCollisionBounds(-6, -27, 6, 0);
if (state == SUPERJUMP && sjball == 1) setCollisionBounds(-6, -13, 6, 0);
mask_index = sMask1;
if (state == DUCKING) mask_index = sMask3;
if (state == BALL || state == AIRBALL || state == SPIDERBALL || state == WATERJET) mask_index = sMask4;
if (sjball == 1 && (state == SUPERJUMP || state == SJSTART || state == SJEND || state == BRAKING)) mask_index = sMask4;
if (state == JUMPING && vjump == 0 && dash > 0) {
    if (xVel < -8) xVel *= 0.5;
    if (xVel > 8) xVel *= 0.5;
}
if (y > global.waterlevel && global.waterlevel != 0) {
    if (inwater == 0) {
        if (abs(yVel) > 1) {
            var splash = instance_create(x, global.waterlevel, oSplash); //added
            splash.bubbles = true; //added
            sfx_play(sndWaterSplash);
            repeat (8 + floor(random(4))) {
                bubble = instance_create(x, y + 12, oLBubble);
                if (instance_exists(bubble)) {
                    bubble.hspeed = random_range(-1.8, 1.8);
                    bubble.vspeed = 0.3 + random(0.7);
                }
            }
            if (global.currentsuit < 2) yVel *= 0.5;
        }
        sfx_stop(spinjump_sound);
        SetSpinJumpSound();
    }
    inwater = 1;
} else {
    if (inwater == 1) {
        if (abs(yVel) > 1) {
            instance_create(x, global.waterlevel, oSplash);
            sfx_play(sndWaterExit);
        }
        sfx_stop(spinjump_sound);
        SetSpinJumpSound();
    }
    inwater = 0;
} // if (y > global.waterlevel && global.waterlevel != 0) else
if (inwater && random(15) < 1 && fxtimer == 0) {
    if (state == BALL || state == AIRBALL || state == SPIDERBALL || state == DUCKING) {
        bubble = instance_create(x, y - 12, oLBubble);
    } else bubble = instance_create(x, y - 32, oLBubble);
}
if (inwater) {
    if (state == JUMPING && vjump == 0) {
        if (global.screwattack == 0 && (global.currentsuit < 2 || global.currentsuit >= 2 && global.spacejump == 0)) {
            if (fxtimer == 0 && random(4) < 1) {
                bubble = instance_create(x, y - 16, oLBubble);
                if (instance_exists(bubble)) {
                    bubble.alarm[0] = 60 + random(200);
                    bubble.direction = random(360);
                    bubble.speed = 0.2;
                }
            }
        }
        if (global.screwattack == 0 && global.currentsuit >= 2 && global.spacejump == 1) {
            if (fxtimer == 0 && random(2) < 1) {
                bubble = instance_create(x, y - 16, oLBubble);
                if (instance_exists(bubble)) {
                    bubble.alarm[0] = 60 + random(200);
                    bubble.direction = random(360);
                    bubble.speed = 0.5;
                }
            }
        }
        if (global.screwattack == 1) {
            if (fxtimer == 0) {
                bubble = instance_create(x, y - 16, oLBubble);
                if (instance_exists(bubble)) {
                    bubble.alarm[0] = 60 + random(120);
                    bubble.direction = random(360);
                    bubble.speed = 0.5;
                }
            }
        }
    } // if (state == JUMPING && vjump == 0)
    if (state == SUPERJUMP && statetime == 0) {
        if (sjdir == 0) {
            repeat (10) {
                bubble = instance_create(x + random_range(-8, 8), y, oLBubble);
                if (instance_exists(bubble)) {
                    bubble.alarm[0] = 60 + random(60);
                    bubble.direction = 90;
                    bubble.speed = 0.5 + random(1.5);
                }
            }
        }
        if (sjdir == 1 || sjdir == 3) {
            repeat (10) {
                bubble = instance_create(x, y - random(16), oLBubble);
                if (instance_exists(bubble)) {
                    bubble.alarm[0] = 60 + random(60);
                    bubble.direction = 180;
                    bubble.speed = 0.5 + random(1.5);
                }
            }
        }
        if (sjdir == 2 || sjdir == 4) {
            repeat (10) {
                bubble = instance_create(x, y - random(16), oLBubble);
                if (instance_exists(bubble)) {
                    bubble.alarm[0] = 60 + random(60);
                    bubble.direction = 0;
                    bubble.speed = 0.5 + random(1.5);
                }
            }
        }
    } // if (state == SUPERJUMP && statetime == 0)
    if (state == BRAKING && statetime < 60) {
        if (fxtimer == 0) {
            bubble = instance_create(x + random_range(-4, 4), y, oLBubble);
            if (instance_exists(bubble)) bubble.alarm[0] = 60 + random(60);
        }
    }
} // if (inwater)
if (footstep == 0) {
    if (state == RUNNING) {
        if (abs(image_index) >= 4 && abs(image_index) < 4.9 || abs(image_index) >= 9 && abs(image_index) < 9.9) {
            PlayFootstep(get_floor_material());
            if (inwater == 0 && waterfall == 0 && monster_drain == 0) {
                footstep = 5;
            } else {
                footstep = 10;
                if (inwater) {
                    if (random(3) < 1) {
                        bubble = instance_create(x, y, oLBubble);
                        if (instance_exists(bubble)) bubble.alarm[0] = 60 + random(120);
                    }
                }
            }
        }
    }
}
if (!sfx_isplaying(spinjump_sound) && state == JUMPING && vjump == 0 && statetime >= 10) LoopSoundMono(spinjump_sound);
if (sfx_isplaying(spinjump_sound) && (state != JUMPING || state == JUMPING && vjump == 1)) sfx_stop(spinjump_sound);
if (sfx_isplaying(sndSBLoop) && dash == 0) sfx_stop(sndSBLoop);
if (sfx_isplaying(sndSBStart) && dash == 0) sfx_stop(sndSBStart);
if (charge == 0 && sfx_isplaying(sndSBChargeLoop)) sfx_stop(sndSBChargeLoop);
if (chargebeam > 0 && chargebeam < 0.03) sfx_play(sndCharge);
if (chargebeam > 0.97 && chargebeam < 1) {
    LoopSoundMono(sndChargeLoop);
    sfx_stop(sndCharge);
}
if (chargebeam == 0) {
    sfx_stop(sndCharge);
    sfx_stop(sndChargeLoop);
}
if ((oControl.hpalarm > 0) && (oControl.mod_lowhealthwarning > 0) && !sfx_isplaying(sndLowEnergyAlertLoop)) { LoopSoundMono(sndLowEnergyAlertLoop); }
if ((oControl.hpalarm == 0) || (oControl.mod_lowhealthwarning == 0)) { sfx_stop(sndLowEnergyAlertLoop); }
if (sfx_isplaying(sndSBallLoop) && (floor(sball) == 0)) sfx_stop(sndSBallLoop);
if (sfx_isplaying(sndLavaLoop) && (floor(burning) == 0)) sfx_stop(sndLavaLoop);
if (sfx_isplaying(sndPlantLoop) && (floor(plantdrainfx) == 0)) sfx_stop(sndPlantLoop);
if (sfx_isplaying(sndDrainLoop) && (floor(monster_drainfx) == 0) && (floor(queen_drainfx) == 0)) sfx_stop(sndDrainLoop);
if (dash > 0 && xVel == 0) dash = 0;
if (dash == 0) speedboost = 0;
if (justwalljumped > 0) justwalljumped -= 1;
if (noaimup > 0) noaimup -= 1;
if (novjump > 0) novjump -= 1;
if (nofire > 0) nofire -= 1;
if (nomorph > 0) nomorph -= 1;
if (mockball > 0) mockball -= 1;
if (fxtimer >= 0) fxtimer -= 1;
if (fxtimer == -1) fxtimer = 5;
if (fixedx > 0) fixedx -= 1;
if (fixedy > 0) fixedy -= 1;
if (dash > 0 && dash < 40 && state == RUNNING) dash += 1;
if (dash >= 40 && dash < 45 && state == RUNNING) dash += 0.5;
//run key leftover
//if (dash > 0 && dash < 45 && state == RUNNING && kWalk > 0) dash += 1;
if (shinespark > 0) shinespark -= 1;
if (charge > 0) charge -= 1;
if (invincible > 0) invincible -= 1;
if (juststarted > 0) juststarted -= 1;
if (cmhurt > 0) cmhurt -= 1;
if (cmmorph > 0) cmmorph -= 1;
if (footstep > 0) footstep -= 1;
if (speedmultiresettimer > 0) {
    speedmultiresettimer -= 1;
} else speedmultiplier = 1;
if (state == JUMPING) {
    airtime += 1;
} else airtime = 0;
if (state == RUNNING && (kLeft > 0 || kRight > 0) && turning == 0) {
    speedboost_steps += 1;
} else speedboost_steps = 0;
if (speedboost_steps > 0 && state != RUNNING) speedboost_steps = 0;
if (canrecover > 0) canrecover -= 1;
if (firing > 0) firing -= 1;
if (waterfall > 0) waterfall -= 1;
if (onfire > 0) onfire -= 1;
if (ballbounce > 0) ballbounce -= 1;
statetime += 1;
if (state != IDLE && state != SAVING && state != SAVINGFX && state != SAVINGSHIP && state != SAVINGSHIPFX) global.gametime += 1;

//Custom code start

if !global.speedbooster && dash > 27 {
    dash = 27;
}

if (xVelStoredTimer > 0) {
    if facing == RIGHT {
        xVel = 2.4; 
    }
    if facing == LEFT {
        xVel = -2.4;
    }
}
if (xVelStoredTimer > 0) xVelStoredTimer -= 1;

//vert spinjump
if (vSpin > 0) {
    //debug noise
    //LoopSoundMono(sndChargeLoop);
    xVel = 0;
    xAcc = 0;
    if state != JUMPING{
        vSpin = 0;
    }
    if (kRight > 0 || kLeft > 0){
        vSpin = 0;
    }
}

if (sidePressTimer > 0){
    sidePressTimer -= 1;
}
if (sidePressTimer == 0 && platformCharacterIs(ON_GROUND)){
    vSpin = 0;
}

if ((kRight > 0 || kLeft > 0) && platformCharacterIs(ON_GROUND)){
    sidePressTimer = 6;
}
//if (vjump == 0 && kJump && platformCharacterIs(ON_GROUND) && sidePressTimer > 0 && kRight == 0 && kLeft == 0) {
    //vSpin = 1;
//}

if (vSpin > 0 && vjump == 0 && state == JUMPING){
    if (kRight > 0 || kLeft > 0){
        vSpin = 0;
    }
}

//machball (the state of being in mockball or not, mockball is just the buffer for activating it from vanilla)
if platformCharacterIs(IN_AIR) {
    airStoredXvel = xVel;
}
if (speedboostFXTimer > 0) speedboostFXTimer -=1;
if (slideCooldown > 0) slideCooldown -= 1
if machball > 0 && state == BALL && (kRight > 0 || kLeft > 0){
    if (airStoredXvel > 6 && kLeft > 0){
        xVel = (airStoredXvel);
    } else {
        xVel = 6;
    }
    if (airStoredXvel < -6 && kRight > 0){
        xVel = (airStoredXvel);
    } else {
        xVel = -6;
    }
    //LoopSoundMono(sndChargeLoop);
    if xVel > 0 && kLeft > 0 {
        xVel = 0;
        machball = 0;
    }
    if xVel < 0 && kRight > 0 {
        xVel = 0;
        machball = 0;
    }
}

if (state != BALL) {
    machball = 0;
}
if (machball > 0 && kRight > 0 && kLeft > 0 ){
    machball = 0;
    dash = 0;
}
if (dash > 40 && dash < 41 && state == RUNNING){
    sfx_play(sndSBStart);
}
if (sfx_isplaying(sndSBStart) && speedboost == 0 && state != RUNNING) sfx_stop(sndSBStart);
