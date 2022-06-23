/// chStepSetSprite()
var armcannon, set;
armcannon = 1;
set = global.currentsuit;
if (state == STANDING) {
    if (landing == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sLand,sLand_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVLand,sLand_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGLand,sLand_fusion);
        image_speed = 0.5;
    } else if (turning == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sTurn,sTurn_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVTurn,sTurn_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGTurn,sTurn_fusion);
        image_speed = 0.5;
    } else {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = scr_suit_sprites(sStandRight,sStandRight_fusion); //sStandRight
            if (set == 1) sprite_index = scr_suit_sprites(sVStandRight,sStandRight_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGStandRight,sStandRight_fusion);
            image_speed = 0.1;
            if (idle == timetoidle) idleanim = round(random(1));
            if (idle > timetoidle && !instance_exists(oEMPNoise)) {
                image_speed = 0;
                armcannon = 0;
                if (set == 0) sprite_index = scr_suit_sprites(sIdleRight,sIdleRight_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVIdleRight,sIdleRight_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGIdleRight,sIdleRight_fusion);
                if (idleanim == 0) {
                    if (idle > timetoidle && idle <= timetoidle + 10) image_index = 0;
                    if (idle > timetoidle + 10 && idle <= timetoidle + 20) image_index = 1;
                    if (idle > timetoidle + 20 && idle <= timetoidle + 80) image_index = 2;
                    if (idle > timetoidle + 80 && idle <= timetoidle + 90) image_index = 3;
                    if (idle > timetoidle + 90 && idle <= timetoidle + 100) image_index = 4;
                    if (idle > timetoidle + 100 && idle <= timetoidle + 160) image_index = 5;
                    if (idle > timetoidle + 160 && idle <= timetoidle + 170) image_index = 4;
                    if (idle > timetoidle + 170 && idle <= timetoidle + 180) image_index = 3;
                    if (idle > timetoidle + 180 && idle <= timetoidle + 190) image_index = 2;
                    if (idle > timetoidle + 190 && idle <= timetoidle + 200) image_index = 6;
                    if (idle > timetoidle + 200 && idle <= timetoidle + 270) image_index = 7;
                    if (idle > timetoidle + 270 && idle <= timetoidle + 280) image_index = 6;
                    if (idle > timetoidle + 280 && idle <= timetoidle + 290) image_index = 1;
                    if (idle > timetoidle + 290) {
                        idle = 0;
                        timetoidle = 300 + floor(random(300));
                    }
                }
                if (idleanim == 1) {
                    if (idle > timetoidle && idle <= timetoidle + 10) image_index = 0;
                    if (idle > timetoidle + 10 && idle <= timetoidle + 20) image_index = 1;
                    if (idle > timetoidle + 20 && idle <= timetoidle + 80) image_index = 2;
                    if (idle > timetoidle + 80 && idle <= timetoidle + 110) image_index = 8;
                    if (idle > timetoidle + 110 && idle <= timetoidle + 120) image_index = 9;
                    if (idle > timetoidle + 120 && idle <= timetoidle + 130) image_index = 10;
                    if (idle > timetoidle + 130 && idle <= timetoidle + 140) image_index = 11;
                    if (idle > timetoidle + 140 && idle <= timetoidle + 150) image_index = 10;
                    if (idle > timetoidle + 150 && idle <= timetoidle + 160) image_index = 11;
                    if (idle > timetoidle + 160 && idle <= timetoidle + 170) image_index = 10;
                    if (idle > timetoidle + 170 && idle <= timetoidle + 180) image_index = 9;
                    if (idle > timetoidle + 180 && idle <= timetoidle + 210) image_index = 10;
                    if (idle > timetoidle + 210 && idle <= timetoidle + 220) image_index = 11;
                    if (idle > timetoidle + 220 && idle <= timetoidle + 230) image_index = 10;
                    if (idle > timetoidle + 230 && idle <= timetoidle + 240) image_index = 9;
                    if (idle > timetoidle + 240 && idle <= timetoidle + 250) image_index = 8;
                    if (idle > timetoidle + 250 && idle <= timetoidle + 260) image_index = 2;
                    if (idle > timetoidle + 260 && idle <= timetoidle + 270) image_index = 1;
                    if (idle > timetoidle + 270) {
                        idle = 0;
                        timetoidle = 300 + floor(random(300));
                    }
                }
            } // if (idle > timetoidle && !instance_exists(oEMPNoise))
            if (aimdirection == 2) {
                if (set == 0) sprite_index = scr_suit_sprites(sStandAimUR,sStandAimUR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVStandAimUR,sStandAimUR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGStandAimUR,sStandAimUR_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 4) {
                if (set == 0) sprite_index = scr_suit_sprites(sStandAimDR,sStandAimDR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVStandAimDR,sStandAimDR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGStandAimDR,sStandAimDR_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = scr_suit_sprites(sStandAimUp,sStandAimUp_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVStandAimUp,sStandAimUp_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGStandAimUp,sStandAimUp_fusion);
                image_speed = 0.1;
            }
        } // if (facing == RIGHT)
        if (facing == LEFT) {
            if (set == 0) sprite_index = scr_suit_sprites(sStandLeft,sStandLeft_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVStandLeft,sStandLeft_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGStandLeft,sStandLeft_fusion);
            image_speed = 0.1;
            if (idle == timetoidle) idleanim = round(random(1));
            if (idle > timetoidle && !instance_exists(oEMPNoise)) {
                image_speed = 0;
                armcannon = 0;
                if (set == 0) sprite_index = scr_suit_sprites(sIdleLeft,sIdleLeft_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVIdleLeft,sIdleLeft_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGIdleLeft,sIdleLeft_fusion);
                if (idleanim == 0) {
                    if (idle > timetoidle && idle <= timetoidle + 10) image_index = 0;
                    if (idle > timetoidle + 10 && idle <= timetoidle + 20) image_index = 1;
                    if (idle > timetoidle + 20 && idle <= timetoidle + 80) image_index = 2;
                    if (idle > timetoidle + 80 && idle <= timetoidle + 90) image_index = 3;
                    if (idle > timetoidle + 90 && idle <= timetoidle + 100) image_index = 4;
                    if (idle > timetoidle + 100 && idle <= timetoidle + 160) image_index = 5;
                    if (idle > timetoidle + 160 && idle <= timetoidle + 170) image_index = 4;
                    if (idle > timetoidle + 170 && idle <= timetoidle + 180) image_index = 3;
                    if (idle > timetoidle + 180 && idle <= timetoidle + 190) image_index = 2;
                    if (idle > timetoidle + 190 && idle <= timetoidle + 200) image_index = 6;
                    if (idle > timetoidle + 200 && idle <= timetoidle + 270) image_index = 7;
                    if (idle > timetoidle + 270 && idle <= timetoidle + 280) image_index = 6;
                    if (idle > timetoidle + 280 && idle <= timetoidle + 290) image_index = 1;
                    if (idle > timetoidle + 290) {
                        idle = 0;
                        timetoidle = 60;
                    }
                }
                if (idleanim == 1) {
                    if (idle > timetoidle && idle <= timetoidle + 10) image_index = 0;
                    if (idle > timetoidle + 10 && idle <= timetoidle + 20) image_index = 1;
                    if (idle > timetoidle + 20 && idle <= timetoidle + 80) image_index = 2;
                    if (idle > timetoidle + 80 && idle <= timetoidle + 110) image_index = 8;
                    if (idle > timetoidle + 110 && idle <= timetoidle + 120) image_index = 9;
                    if (idle > timetoidle + 120 && idle <= timetoidle + 130) image_index = 10;
                    if (idle > timetoidle + 130 && idle <= timetoidle + 140) image_index = 11;
                    if (idle > timetoidle + 140 && idle <= timetoidle + 150) image_index = 10;
                    if (idle > timetoidle + 150 && idle <= timetoidle + 160) image_index = 11;
                    if (idle > timetoidle + 160 && idle <= timetoidle + 170) image_index = 10;
                    if (idle > timetoidle + 170 && idle <= timetoidle + 180) image_index = 9;
                    if (idle > timetoidle + 180 && idle <= timetoidle + 210) image_index = 10;
                    if (idle > timetoidle + 210 && idle <= timetoidle + 220) image_index = 11;
                    if (idle > timetoidle + 220 && idle <= timetoidle + 230) image_index = 10;
                    if (idle > timetoidle + 230 && idle <= timetoidle + 240) image_index = 9;
                    if (idle > timetoidle + 240 && idle <= timetoidle + 250) image_index = 8;
                    if (idle > timetoidle + 250 && idle <= timetoidle + 260) image_index = 2;
                    if (idle > timetoidle + 260 && idle <= timetoidle + 270) image_index = 1;
                    if (idle > timetoidle + 270) {
                        idle = 0;
                        timetoidle = 300 + random(300);
                    }
                }
            } // if (idle > timetoidle && !instance_exists(oEMPNoise))
            if (aimdirection == 3) {
                if (set == 0) sprite_index = scr_suit_sprites(sStandAimUL,sStandAimUL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVStandAimUL,sStandAimUL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGStandAimUL,sStandAimUL_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 5) {
                if (set == 0) sprite_index = scr_suit_sprites(sStandAimDL,sStandAimDL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVStandAimDL,sStandAimDL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGStandAimDL,sStandAimDL_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = scr_suit_sprites(sStandAimUpL,sStandAimUpL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVStandAimUpL,sStandAimUpL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGStandAimUpL,sStandAimUpL_fusion);
                image_speed = 0.1;
            }
        } // if (facing == LEFT)
    } // if (landing == 1) else
} // if (state == STANDING)
if (state == RUNNING) {
    landing = 0;
    if (turning == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sTurn,sTurn_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVTurn,sTurn_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGTurn,sTurn_fusion);
        image_speed = 0.5;
    } else {
        if (facing == RIGHT && walking == 0) {
            if (aimdirection == 0 && firing == 0 && armmsl == 0) { 
                if (set == 0) sprite_index = scr_suit_sprites(sRunRight,sRunRight_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVRunRight,sRunRight_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGRunRight,sRunRight_fusion);
            }
            if (aimdirection == 0 && (firing > 0 || armmsl == 1)) {
                if (set == 0) sprite_index = scr_suit_sprites(sRunAimR,sRunAimR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVRunAimR,sRunAimR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGRunAimR,sRunAimR_fusion);
            }
            if (aimdirection == 2) {
                if (set == 0) sprite_index = scr_suit_sprites(sRunAimUR,sRunAimUR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVRunAimUR,sRunAimUR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGRunAimUR,sRunAimUR_fusion);
            }
            if (aimdirection == 4) {
                if (set == 0) sprite_index = scr_suit_sprites(sRunAimDR,sRunAimDR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVRunAimDR,sRunAimDR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGRunAimDR,sRunAimDR_fusion);
            }
            if dash < 5 {
                image_speed = 0.35;
            }
            else if dash < 40{
              image_speed = 0.5;
            }
            else image_speed = 0.7
        } // if (facing == RIGHT && walking == 0) 
        if (facing == LEFT && walking == 0) {
            if (aimdirection == 1 && firing == 0 && armmsl == 0) {
                if (set == 0) sprite_index = scr_suit_sprites(sRunLeft,sRunLeft_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVRunLeft,sRunLeft_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGRunLeft,sRunLeft_fusion);
                
            }
            if (aimdirection == 1 && (firing > 0 || armmsl == 1)) {
                if (set == 0) sprite_index = scr_suit_sprites(sRunAimL,sRunAimL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVRunAimL,sRunAimL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGRunAimL,sRunAimL_fusion);
                
            }
            if (aimdirection == 3) {
                if (set == 0) sprite_index = scr_suit_sprites(sRunAimUL,sRunAimUL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVRunAimUL,sRunAimUL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGRunAimUL,sRunAimUL_fusion);
                
            }
            if (aimdirection == 5) {
                if (set == 0) sprite_index = scr_suit_sprites(sRunAimDL,sRunAimDL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVRunAimDL,sRunAimDL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGRunAimDL,sRunAimDL_fusion);
                
            }
            if dash < 5 {
                image_speed = 0.35;
            }
            else if dash < 40{
              image_speed = 0.5;
            }
            else image_speed = 0.7
        } // if (facing == LEFT && walking == 0)
        if (facing == RIGHT && walking == 1) {
            if (aimdirection == 0 && firing == 0 && armmsl == 0 && aimlock == 0) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkRight,sWalkRight_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkRight,sWalkRight_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkRight,sWalkRight_fusion);
            }
            if (aimdirection == 0 && (firing > 0 || armmsl == 1 || aimlock == 1)) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkAimR,sWalkAimR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkAimR,sWalkAimR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkAimR,sWalkAimR_fusion);;
            }
            if (aimdirection == 2) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkAimUR,sWalkAimUR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkAimUR,sWalkAimUR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkAimUR,sWalkAimUR_fusion);
            }
            if (aimdirection == 4) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkAimDR,sWalkAimDR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkAimDR,sWalkAimDR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkAimDR,sWalkAimDR_fusion);
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkAimUp,sWalkAimUp_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkAimUp,sWalkAimUp_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkAimUp,sWalkAimUp_fusion);
            }
            if (xVel > 0) {
                image_speed = 0.25;
            } else if (xVel < 0) {
                image_speed = -0.25;
                if (image_index <= -10) image_index = 0;
            }
        } // if (facing == RIGHT && walking == 1)
        if (facing == LEFT && walking == 1) {
            if (aimdirection == 1 && firing == 0 && armmsl == 0 && aimlock == 0) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkLeft,sWalkLeft_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkLeft,sWalkLeft_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkLeft,sWalkLeft_fusion);
            }
            if (aimdirection == 1 && (firing > 0 || armmsl == 1 || aimlock == 1)) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkAimL,sWalkAimL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkAimL,sWalkAimL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkAimL,sWalkAimL_fusion);
            }
            if (aimdirection == 3) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkAimUL,sWalkAimUL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkAimUL,sWalkAimUL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkAimUL,sWalkAimUL_fusion);
            }
            if (aimdirection == 5) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkAimDL,sWalkAimDL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkAimDL,sWalkAimDL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkAimDL,sWalkAimDL_fusion);
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = scr_suit_sprites(sWalkAimUpL,sWalkAimUpL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVWalkAimUpL,sWalkAimUpL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGWalkAimUpL,sWalkAimUpL_fusion);
            }
            if (xVel < 0) {
                image_speed = 0.25;
            } else if (xVel > 0) {
                image_speed = -0.25;
                if (image_index <= -10) image_index = 0;
            }
        } // if (facing == LEFT && walking == 1)
    } // if (turning == 1) else
} // if (state == RUNNING)
if (state == DUCKING) {
    if (unmorphing == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sUnmorph,sUnmorph_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVUnmorph,sUnmorph_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGUnmorph,sUnmorph_fusion);
        image_speed = 0.8;
    } else if (turning == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sCrouchTurn,sCrouchTurn_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVCrouchTurn,sCrouchTurn_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGCrouchTurn,sCrouchTurn_fusion);
        image_speed = 0.5;
    } else {
        if (set == 0) sprite_index = scr_suit_sprites(sCrouch,sCrouch_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVCrouch,sCrouch_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGCrouch,sCrouch_fusion);
        image_speed = 0.1;
    }
}

if (state == DREADSLIDE) {
        if (statetime < 5) {
            if (set == 0) sprite_index = scr_suit_sprites(sDreadSlideL_0, sDreadSlideL_0,);
            if (set == 1) sprite_index = scr_suit_sprites(sVDreadSlideL_0, sVDreadSlideL_0,);
            if (set == 2) sprite_index = scr_suit_sprites(sGDreadSlideL_0, sGDreadSlideL_0,);
        }
        if (statetime > 5 && statetime < 13){
            if (set == 0) sprite_index = scr_suit_sprites(sDreadSlideL_1, sDreadSlideL_1,);
            if (set == 1) sprite_index = scr_suit_sprites(sVDreadSlideL_1, sVDreadSlideL_1,);
            if (set == 2) sprite_index = scr_suit_sprites(sGDreadSlideL_1, sGDreadSlideL_1,);
        }
        if (statetime >= 13) {
            if (set == 0) sprite_index = scr_suit_sprites(sDreadSlideL_2, sDreadSlideL_2,);
            if (set == 1) sprite_index = scr_suit_sprites(sVDreadSlideL_2, sVDreadSlideL_2,);
            if (set == 2) sprite_index = scr_suit_sprites(sGDreadSlideL_2, sGDreadSlideL_2,);
        }
}

if (state == JUMPING) {
    if (vjump == 0) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = scr_suit_sprites(sJumpRight,sJumpRight_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVJumpRight,sJumpRight_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGJumpRight,sJumpRight_fusion);
            image_speed = 0.75;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = scr_suit_sprites(sJumpLeft,sJumpLeft_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVJumpLeft,sJumpLeft_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGJumpLeft,sJumpLeft_fusion);
            image_speed = 0.75;
        }
        if (global.spacejump == 1 && statetime > 4 && (inwater == 0 || global.currentsuit == 2)) {
            if (set == 0) sprite_index = scr_suit_sprites(sSpacejump,sSpacejump_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVSpacejump,sSpacejump_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGSpacejump,sSpacejump_fusion);
            image_speed = 1;
        }
    }
    if (vjump == 1) {
        if (turning == 1) {
            if (set == 0) sprite_index = scr_suit_sprites(sAirTurn,sAirTurn_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVAirTurn,sAirTurn_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGAirTurn,sAirTurn_fusion);
            image_speed = 0.5;
            if (aimdirection == 7) {
                if (facing == RIGHT) {
                    if (set == 0) sprite_index = scr_suit_sprites(sJAimDwnTR,sJAimDwnTR_fusion);
                    if (set == 1) sprite_index = scr_suit_sprites(sVJAimDwnTR,sJAimDwnTR_fusion);
                    if (set == 2) sprite_index = scr_suit_sprites(sGJAimDwnTR,sJAimDwnTR_fusion);
                    image_speed = 0.75;
                }
                if (facing == LEFT) {
                    if (set == 0) sprite_index = scr_suit_sprites(sJAimDwnTL,sJAimDwnTL_fusion);
                    if (set == 1) sprite_index = scr_suit_sprites(sVJAimDwnTL,sJAimDwnTL_fusion);
                    if (set == 2) sprite_index = scr_suit_sprites(sGJAimDwnTL,sJAimDwnTL_fusion);
                    image_speed = 0.75;
                }
            }
        } else if (unmorphing == 1) {
            if (set == 0) sprite_index = scr_suit_sprites(sUnmorph,sUnmorph_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVUnmorph,sUnmorph_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGUnmorph,sUnmorph_fusion);
            image_speed = 0.8;
        } else {
            if (aimdirection != 7) {
                if (set == 0) sprite_index = scr_suit_sprites(sVjump,sVjump_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVVjump,sVjump_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGVjump,sVjump_fusion);
                image_speed = 0.2;
            }
            if (aimdirection == 7) {
                if (facing == RIGHT) {
                    if (set == 0) sprite_index = scr_suit_sprites(sJAimDwnR,sJAimDwnR_fusion);
                    if (set == 1) sprite_index = scr_suit_sprites(sVJAimDwnR,sJAimDwnR_fusion);
                    if (set == 2) sprite_index = scr_suit_sprites(sGJAimDwnR,sJAimDwnR_fusion);
                    image_speed = 0.75;
                }
                if (facing == LEFT) {
                    if (set == 0) sprite_index = scr_suit_sprites(sJAimDwnL,sJAimDwnL_fusion);
                    if (set == 1) sprite_index = scr_suit_sprites(sVJAimDwnL,sJAimDwnL_fusion);
                    if (set == 2) sprite_index = scr_suit_sprites(sGJAimDwnL,sJAimDwnL_fusion);
                    image_speed = 0.75;
                }
            }
        } // if (turning == 1) else
    } // if (vjump == 1)
    if (walljumping == 1) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = scr_suit_sprites(sWalljump,sWalljump_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVWalljump,sWalljump_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGWalljump,sWalljump_fusion);
            image_speed = 1;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = scr_suit_sprites(sWalljumpL,sWalljumpL_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVWalljumpL,sWalljumpL_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGWalljumpL,sWalljumpL_fusion);
            image_speed = 1;
        }
    }
} // if (state == JUMPING)
if (state == FALLING && statePrev == FALLING && statePrevPrev == FALLING) {
    if (set == 0) sprite_index = scr_suit_sprites(sJumpRight,sJumpRight_fusion);
    if (set == 1) sprite_index = scr_suit_sprites(sVJumpRight,sJumpRight_fusion);
    if (set == 2) sprite_index = scr_suit_sprites(sGJumpRight,sJumpRight_fusion);
    image_speed = 0.75;
}

  



  
if (state == BALL) {
    if (morphing == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sMorph,sMorph_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVMorph,sMorph_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGMorph,sMorph_fusion);
        if (global.opmrpstyle == 0) {
            image_speed = 0.8;
        } else image_speed = 0.5;
    } else if (turning == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sMorphBallTurn,sMorphBallTurn_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVMorphBallTurn,sMorphBallTurn_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGMorphBallTurn,sMorphBallTurn_fusion);
        image_speed = 1;
    } else {
        if (set == 0) sprite_index = scr_suit_sprites(sMorphBall,sMorphBall_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVMorphBall,sMorphBall_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGMorphBall,sMorphBall_fusion);
        image_speed = 0.3;
    }
}

if (state == AIRBALL || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY) {
    if (morphing == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sMorph,sMorph_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVMorph,sMorph_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGMorph,sMorph_fusion);
        image_speed = 0.8;
    } else if (turning == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sMorphBallTurn,sMorphBallTurn_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVMorphBallTurn,sMorphBallTurn_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGMorphBallTurn,sMorphBallTurn_fusion);
        image_speed = 1;
    } else {        
        if (set == 0) sprite_index = scr_suit_sprites(sAirMorphBall,sAirMorphBall_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVAirMorphBall,sAirMorphBall_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGAirMorphBall,sAirMorphBall_fusion);        
        image_speed = 0.3;
    }
}



if (state == GRABBEDQUEEN) {
    if (set == 0) sprite_index = scr_suit_sprites(sBittenL,sBittenL_fusion);
    if (set == 1) sprite_index = scr_suit_sprites(sVBittenL,sBittenL_fusion);
    if (set == 2) sprite_index = scr_suit_sprites(sGBittenL,sBittenL_fusion);
}
if (state == SPIDERBALL || state == AIRBALL && sball == 1) {    
    if (set == 0) sprite_index = scr_suit_sprites(sSpiderMorphBall,sSpiderMorphBall_fusion);
    if (set == 1) sprite_index = scr_suit_sprites(sVSpiderMorphBall,sSpiderMorphBall_fusion);
    if (set == 2) sprite_index = scr_suit_sprites(sGSpiderMorphBall,sSpiderMorphBall_fusion);

    if((xprevious - x != 0) or (yprevious - y != 0))
    {
        var sDir   = point_direction(xprevious, yprevious, x, y),
            sDir1  = (sDir + 90),
            sDir2  = (sDir - 90),
            sDirX1 = cos(degtorad(sDir1)),
            sDirY1 = sin(degtorad(sDir1)),
            sDirX2 = cos(degtorad(sDir2)),
            sDirY2 = sin(degtorad(sDir2)),
            sTouchSide1 = place_meeting(x - sDirX1*2, y + sDirY1*2, oSolid),
            sTouchSide2 = place_meeting(x - sDirX2*2, y + sDirY2*2, oSolid);
            
        // If moving counter-clockwise around the room...
        if(sTouchSide1) {
            // ...then spin the ball clockwise.
            if(facing == RIGHT) {
                image_speed = 0.3;
            }
            else {
                image_speed = -0.3;
            }
        }
            
        // If moving clockwise around the room...
        if(sTouchSide2) {
            // ...then spin the ball counter-clockwise.
            if(facing == RIGHT) {
                image_speed = -0.3;
            }
            else {
                image_speed = 0.3;
            }
        }
    }
}
if (state == LOCKEDBALL) {
    if (set == 0) sprite_index = scr_suit_sprites(sMorphBall,sMorphBall_fusion);
    if (set == 1) sprite_index = scr_suit_sprites(sVMorphBall,sMorphBall_fusion);
    if (set == 2) sprite_index = scr_suit_sprites(sGMorphBall,sMorphBall_fusion);
    image_speed = 0;
    image_index = 0;
}
if (state == GRIP) {
    if (facing == RIGHT) {
        if (turning == 1) {
            if (set == 0) sprite_index = scr_suit_sprites(sGripTurnR,sGripTurnR_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVGripTurnR,sGripTurnR_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGGripTurnR,sGripTurnR_fusion);
            image_speed = 0.5;
        } else {
            if (aimdirection == 0 || aimdirection == 2 || aimdirection == 4) {
                if (set == 0) sprite_index = scr_suit_sprites(sGrip,sGrip_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGrip,sGrip_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGrip,sGrip_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 1) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimL,sGripAimL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimL,sGripAimL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimL,sGripAimL_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 3) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimUL,sGripAimUL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimUL,sGripAimUL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimUL,sGripAimUL_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 5) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimDL,sGripAimDL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimDL,sGripAimDL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimDL,sGripAimDL_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimUpR,sGripAimUpR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimUpR,sGripAimUpR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimUpR,sGripAimUpR_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 7) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimDwnR,sGripAimDwnR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimDwnR,sGripAimDwnR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimDwnR,sGripAimDwnR_fusion);
                image_speed = 0.1;
            }
        } // if (turning == 1) else
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (turning == 1) {
            if (set == 0) sprite_index = scr_suit_sprites(sGripTurnL,sGripTurnL_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVGripTurnL,sGripTurnL_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGGripTurnL,sGripTurnL_fusion);
            image_speed = 0.5;
        } else {
            if (aimdirection == 1 || aimdirection == 3 || aimdirection == 5) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripL,sGripL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripL,sGripL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripL,sGripL_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 0) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimR,sGripAimR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimR,sGripAimR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimR,sGripAimR_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 2) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimUR,sGripAimUR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimUR,sGripAimUR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimUR,sGripAimUR_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 4) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimDR,sGripAimDR_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimDR,sGripAimDR_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimDR,sGripAimDR_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimUpL,sGripAimUpL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimUpL,sGripAimUpL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimUpL,sGripAimUpL_fusion);
                image_speed = 0.1;
            }
            if (aimdirection == 7) {
                if (set == 0) sprite_index = scr_suit_sprites(sGripAimDwnL,sGripAimDwnL_fusion);
                if (set == 1) sprite_index = scr_suit_sprites(sVGripAimDwnL,sGripAimDwnL_fusion);
                if (set == 2) sprite_index = scr_suit_sprites(sGGripAimDwnL,sGripAimDwnL_fusion);
                image_speed = 0.1;
            }
        } // if (turning == 1) else
    } // if (facing == LEFT)
} // if (state == GRIP)
if (state == CLIMBING) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = scr_suit_sprites(sClimb,sClimb_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVClimb,sClimb_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGClimb,sClimb_fusion);
        image_speed = 1;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = scr_suit_sprites(sClimbL,sClimbL_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVClimbL,sClimbL_fusion);;
        if (set == 2) sprite_index = scr_suit_sprites(sGClimbL,sClimbL_fusion);
        image_speed = 1;
    }
}
if (state == BRAKING) {
    if (sjball == 0) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = scr_suit_sprites(sBrakeR,sBrakeR_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVBrakeR,sBrakeR_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGBrakeR,sBrakeR_fusion);
            image_speed = 0.2;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = scr_suit_sprites(sBrakeL,sBrakeL_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVBrakeL,sBrakeL_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGBrakeL,sBrakeL_fusion);
            image_speed = 0.2;
        }
    }
    if (sjball == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sAirMorphBall,sAirMorphBall_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVAirMorphBall,sAirMorphBall_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGAirMorphBall,sAirMorphBall_fusion);
        image_speed = 0;
    }
}
if (state == SJSTART && sjball == 0) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = scr_suit_sprites(sSJumpStart,sSJumpStart_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVSJumpStart,sSJumpStart_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGSJumpStart,sSJumpStart_fusion);
        image_speed = 0.3;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = scr_suit_sprites(sSJumpStartL,sSJumpStartL_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVSJumpStartL,sSJumpStartL_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGSJumpStartL,sSJumpStartL_fusion);
        image_speed = 0.3;
    }
}
if (state == SUPERJUMP && sjball == 0) {
    if (sjdir == 0) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = scr_suit_sprites(sSJumpUpR,sSJumpUpR_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVSJumpUpR,sSJumpUpR_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGSJumpUpR,sSJumpUpR_fusion);
            image_speed = 0.5;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = scr_suit_sprites(sSJumpUpL,sSJumpUpL_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVSJumpUpL,sSJumpUpL_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGSJumpUpL,sSJumpUpL_fusion);
            image_speed = 0.5;
        }
    } else {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = scr_suit_sprites(sSJumpR,sSJumpR_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVSJumpR,sSJumpR_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGSJumpR,sSJumpR_fusion);
            image_speed = 0.4;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = scr_suit_sprites(sSJumpL,sSJumpL_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVSJumpL,sSJumpL_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGSJumpL,sSJumpL_fusion);
            image_speed = 0.4;
        }
    } // if (sjdir == 0) else
} // if (state == SUPERJUMP && sjball == 0)
if (state == SJSTART && sjball == 1) {
    if (set == 0) sprite_index = scr_suit_sprites(sAirMorphBall,sAirMorphBall_fusion);
    if (set == 1) sprite_index = scr_suit_sprites(sVAirMorphBall,sAirMorphBall_fusion);
    if (set == 2) sprite_index = scr_suit_sprites(sGAirMorphBall,sAirMorphBall_fusion);
    image_speed = 0;
}
if (state == SUPERJUMP && sjball == 1) {
    if (sjdir == 0) {
        if (set == 0) sprite_index = scr_suit_sprites(sMorphBallTurn,sMorphBallTurn_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVMorphBallTurn,sMorphBallTurn_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGMorphBallTurn,sMorphBallTurn_fusion);
        image_speed = 0.5;
    } else {
        if (set == 0) sprite_index = scr_suit_sprites(sAirMorphBall,sAirMorphBall_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVAirMorphBall,sAirMorphBall_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGAirMorphBall,sAirMorphBall_fusion);
        image_speed = 1;
    }
}
if (state == HURT) {
    if (sjball == 0) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = scr_suit_sprites(sHurtR,sHurtR_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVHurtR,sHurtR_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGHurtR,sHurtR_fusion);
            image_speed = 0.2;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = scr_suit_sprites(sHurtL,sHurtL_fusion);
            if (set == 1) sprite_index = scr_suit_sprites(sVHurtL,sHurtL_fusion);
            if (set == 2) sprite_index = scr_suit_sprites(sGHurtL,sHurtL_fusion);
            image_speed = 0.2;
        }
    }
    if (sjball == 1) {
        if (set == 0) sprite_index = scr_suit_sprites(sAirMorphBall,sAirMorphBall_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVAirMorphBall,sAirMorphBall_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGAirMorphBall,sAirMorphBall_fusion);
        image_speed = 0.5;
    }
}
if (state == IDLE || state == SAVING || state == SAVINGSHIP || state == ELEVATOR || state == GFELEVATOR) {
    if (facing == 0) {
        if (set == 0) sprite_index = scr_suit_sprites(sFront,sFront_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVFront,sFront_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGFront,sFront_fusion);
        image_speed = 0.1;
    }
    if (facing == RIGHT) {
        if (set == 0) sprite_index = scr_suit_sprites(sFrontR,sFrontR_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVFrontR,sFrontR_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGFrontR,sFrontR_fusion);
        image_speed = 0.5;
        aimdirection = 0;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = scr_suit_sprites(sFrontL,sFrontL_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVFrontL,sFrontL_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGFrontL,sFrontL_fusion);
        image_speed = 0.5;
        aimdirection = 1;
    }
}
if (state == GRABBEDGAMMA || state == GRABBEDOMEGA) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = scr_suit_sprites(sHurtR,sHurtR_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVHurtR,sHurtR_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGHurtR,sHurtR_fusion);
        image_speed = 0;
        image_index = 1;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = scr_suit_sprites(sHurtL,sHurtL_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVHurtL,sHurtL_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGHurtL,sHurtL_fusion);
        image_speed = 0;
        image_index = 1;
    }
}
if (state == KNOCKBACK1 || state == KNOCKBACK2) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = scr_suit_sprites(sKnockbackR,sKnockbackR_fusion);;
        if (set == 1) sprite_index = scr_suit_sprites(sVKnockbackR,sKnockbackR_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGKnockbackR,sKnockbackR_fusion);
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = scr_suit_sprites(sKnockbackL,sKnockbackL_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVKnockbackL,sKnockbackL_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGKnockbackL,sKnockbackL_fusion);
    }
}
if (state == KNOCKBACK1_LAND || state == KNOCKBACK2_LAND) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = scr_suit_sprites(sKnockLandR,sKnockLandR_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVKnockLandR,sKnockLandR_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGKnockLandR,sKnockLandR_fusion);
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = scr_suit_sprites(sKnockLandL,sKnockLandL_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVKnockLandL,sKnockLandL_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGKnockLandL,sKnockLandL_fusion);
    }
}
if (state == A4EXPL) {
    if (facing == RIGHT && statetime >= 60) {
        if (set == 0) sprite_index = scr_suit_sprites(sKnockLandR,sKnockLandR_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVKnockLandR,sKnockLandR_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGKnockLandR,sKnockLandR_fusion);
    }
}
if (state == RECOVER) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = scr_suit_sprites(sJumpRight,sJumpRight_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVJumpRight,sJumpRight_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGJumpRight,sJumpRight_fusion);
        image_speed = -0.5;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = scr_suit_sprites(sJumpLeft,sJumpLeft_fusion);
        if (set == 1) sprite_index = scr_suit_sprites(sVJumpLeft,sJumpLeft_fusion);
        if (set == 2) sprite_index = scr_suit_sprites(sGJumpLeft,sJumpLeft_fusion);
        image_speed = -0.5;
    }
}
if (inwater == 1 && global.currentsuit != 2 || monster_drain > 0) {
    if (state == RUNNING || state == JUMPING) image_speed *= 0.5;
}
aspr1 = sBlank;
asprx = 0;
aspry = 0;
if (state == DUCKING && morphing == 0 && unmorphing == 0 && turning == 0) {
    if (facing == RIGHT) {
        if (aimdirection == 0) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimR,sAimR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimR,sAimR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimR,sAimR_fusion);
            aspry = -12;
        }
        if (aimdirection == 2) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimUR,sAimUR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimUR,sAimUR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimUR,sAimUR_fusion);
            aspry = -12;
        }
        if (aimdirection == 4) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimDR,sAimDR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimDR,sAimDR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimDR,sAimDR_fusion);
            aspry = -12;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimUpR,sAimUpR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimUpR,sAimUpR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimUpR,sAimUpR_fusion);
            aspry = -13;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 1) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimLcr,sAimLcr_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimLcr,sAimLcr_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimLcr,sAimLcr_fusion);
            aspry = -12;
        }
        if (aimdirection == 3) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimUL,sAimUL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimUL,sAimUL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimUL,sAimUL_fusion);
            aspry = -12;
        }
        if (aimdirection == 5) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimDLcr,sAimDLcr_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimDLcr,sAimDLcr_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimDLcr,sAimDLcr_fusion);
            aspry = -12;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimUpL,sAimUpL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimUpL,sAimUpL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimUpL,sAimUpL_fusion);
            aspry = -13;
        }
    } // if (facing == LEFT)
} // if (state == DUCKING && morphing == 0 && unmorphing == 0 && turning == 0)
if (state == DUCKING && turning == 1) {
    if (facing == RIGHT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimR,sTAimR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimR,sTAimR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimR,sTAimR_fusion);
            aspry = -12;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUR,sTAimUR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUR,sTAimUR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUR,sTAimUR_fusion);
            asprx = -2;
            aspry = -12;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimDR,sTAimDR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimDR,sTAimDR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimDR,sTAimDR_fusion);
            asprx = -2;
            aspry = -12;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUpR,sTAimUpR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUpR,sTAimUpR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUpR,sTAimUpR_fusion);
            aspry = -13;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimL,sTAimL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimL,sTAimL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimL,sTAimL_fusion);
            aspry = -12;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUL,sTAimUL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUL,sTAimUL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUL,sTAimUL_fusion);
            asprx = -2;
            aspry = -12;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimDL,sTAimDL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimDL,sTAimDL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimDL,sTAimDL_fusion);
            aspry = -12;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUpL,sTAimUpL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUpL,sTAimUpL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUpL,sTAimUpL_fusion);
            aspry = -13;
        }
    } // if (facing == LEFT)
} // if (state == DUCKING && turning == 1)
if ((state == STANDING || state == RUNNING) && turning == 1) {
    if (facing == RIGHT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimRst,sTAimRst_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimRst,sTAimRst_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimRst,sTAimRst_fusion);
            aspry = -23;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUR,sTAimUR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUR,sTAimUR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUR,sTAimUR_fusion);
            asprx = -2;
            aspry = -23;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimDR,sTAimDR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimDR,sTAimDR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimDR,sTAimDR_fusion);
            asprx = -2;
            aspry = -23;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUpR,sTAimUpR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUpR,sTAimUpR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUpR,sTAimUpR_fusion);
            aspry = -24;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimLst,sTAimLst_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimLst,sTAimLst_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimLst,sTAimLst_fusion);
            aspry = -23;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUL,sTAimUL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUL,sTAimUL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUL,sTAimUL_fusion);
            asprx = -2;
            aspry = -23;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimDL,sTAimDL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimDL,sTAimDL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimDL,sTAimDL_fusion);
            aspry = -23;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUpL,sTAimUpL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUpL,sTAimUpL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUpL,sTAimUpL_fusion);
            aspry = -24;
        }
    } // if (facing == LEFT)
} // if ((state == STANDING || state == RUNNING) && turning == 1)
if ((state == STANDING || state == RUNNING) && landing == 1) {
    if (facing == RIGHT) {
        if (aimdirection == 0) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimR,sAimR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimR,sAimR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimR,sAimR_fusion);
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimRst,sAimRst_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimRst,sAimRst_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimRst,sAimRst_fusion);
                asprx = -2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimRst,sAimRst_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimRst,sAimRst_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimRst,sAimRst_fusion);
                asprx = -1;
                aspry = -21;
            }
        }
        if (aimdirection == 2) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUR,sAimUR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUR,sAimUR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUR,sAimUR_fusion);
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUR,sAimUR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUR,sAimUR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUR,sAimUR_fusion);
                asprx = -2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUR,sAimUR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUR,sAimUR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUR,sAimUR_fusion);
                asprx = -1;
                aspry = -21;
            }
        }
        if (aimdirection == 4) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimDR,sAimDR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimDR,sAimDR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimDR,sAimDR_fusion);
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimDR,sAimDR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimDR,sAimDR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimDR,sAimDR_fusion);
                asprx = -2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimDR,sAimDR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimDR,sAimDR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimDR,sAimDR_fusion);;
                asprx = -1;
                aspry = -21;
            }
        }
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUpR,sAimUpR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUpR,sAimUpR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUpR,sAimUpR_fusion);
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUpR,sAimUpR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUpR,sAimUpR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUpR,sAimUpR_fusion);
                asprx = -2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUpR,sAimUpR_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUpR,sAimUpR_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUpR,sAimUpR_fusion);
                asprx = -1;
                aspry = -21;
            }
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimL,sAimL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimL,sAimL_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimL,sAimL_fusion);
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimLst,sAimLst_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimLst,sAimLst_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimLst,sAimLst_fusion);
                asprx = 2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimLst,sAimLst_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimLst,sAimLst_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimLst,sAimLst_fusion);
                asprx = 1;
                aspry = -21;
            }
        }
        if (aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUL,sAimUL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUL,sAimUL_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUL,sAimUL_fusion);
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUL,sAimUL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUL,sAimUL_fusion);;
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUL,sAimUL_fusion);
                asprx = 2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUL,sAimUL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUL,sAimUL_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUL,sAimUL_fusion);
                asprx = 1;
                aspry = -21;
            }
        }
        if (aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimDLcr,sAimDLcr_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimDLcr,sAimDLcr_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimDLcr,sAimDLcr_fusion);
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimDL,sAimDL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimDL,sAimDL_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimDL,sAimDL_fusion);
                asprx = 1;
                aspry = -16;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimDL,sAimDL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimDL,sAimDL_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimDL,sAimDL_fusion);
                aspry = -20;
            }
        }
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUpL,sAimUpL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUpL,sAimUpL_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUpL,sAimUpL_fusion);
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUpL,sAimUpL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUpL,sAimUpL_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUpL,sAimUpL_fusion);
                asprx = 2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = scr_suit_sprites(sAimUpL,sAimUpL_fusion);
                if (set == 1) aspr1 = scr_suit_sprites(sVAimUpL,sAimUpL_fusion);
                if (set == 2) aspr1 = scr_suit_sprites(sGAimUpL,sAimUpL_fusion);
                asprx = 1;
                aspry = -21;
            }
        }
    } // if (facing == LEFT)
} // if ((state == STANDING || state == RUNNING) && landing == 1)
if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 0) {
    if (facing == RIGHT) {
        if (aimdirection == 0) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimR,sAimR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimR,sAimR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimR,sAimR_fusion);
            aspry = -22;
        }
        if (aimdirection == 2) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimUR,sAimUR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimUR,sAimUR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimUR,sAimUR_fusion);
            aspry = -22;
        }
        if (aimdirection == 4) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimDR,sAimDR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimDR,sAimDR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimDR,sAimDR_fusion);
            aspry = -22;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimUpR,sAimUpR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimUpR,sAimUpR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimUpR,sAimUpR_fusion);
            aspry = -23;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 1) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimL,sAimL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimL,sAimL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimL,sAimL_fusion);
            aspry = -22;
        }
        if (aimdirection == 3) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimUL,sAimUL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimUL,sAimUL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimUL,sAimUL_fusion);
            aspry = -22;
        }
        if (aimdirection == 5) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimDL,sAimDL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimDL,sAimDL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimDL,sAimDL_fusion);
            aspry = -22;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sAimUpL,sAimUpL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVAimUpL,sAimUpL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGAimUpL,sAimUpL_fusion);
            aspry = -23;
        }
    } // if (facing == LEFT)
} // if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 0)
if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 1) {
    if (facing == RIGHT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimR,sTAimR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimR,sTAimR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimR,sTAimR_fusion);
            aspry = -23;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUR,sTAimUR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUR,sTAimUR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUR,sTAimUR_fusion);
            asprx = -2;
            aspry = -23;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimDR,sTAimDR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimDR,sTAimDR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimDR,sTAimDR_fusion);
            asprx = -1;
            aspry = -23;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUpR,sTAimUpR_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUpR,sTAimUpR_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUpR,sTAimUpR_fusion);
            aspry = -25;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimL,sTAimL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimL,sTAimL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimL,sTAimL_fusion);
            aspry = -23;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUL,sTAimUL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUL,sTAimUL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUL,sTAimUL_fusion);
            asprx = -3;
            aspry = -23;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimDL,sTAimDL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimDL,sTAimDL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimDL,sTAimDL_fusion);
            aspry = -23;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = scr_suit_sprites(sTAimUpL,sTAimUpL_fusion);
            if (set == 1) aspr1 = scr_suit_sprites(sVTAimUpL,sTAimUpL_fusion);
            if (set == 2) aspr1 = scr_suit_sprites(sGTAimUpL,sTAimUpL_fusion);
            asprx = -1;
            aspry = -25;
        }
    } // if (facing == LEFT)
} // if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 1)
aspr2 = sBlank;
aspr2x = 0;
aspr2y = 0;
aspr2a = 0;
if (facing == RIGHT && morphing == 0 && unmorphing == 0) {
    if (state == STANDING && landing == 0 && turning == 0 && armcannon == 1) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            aspr2x = 14;
            aspr2y = -27;
        }
        if (aimdirection == 2) {
            aspr2 = sArmMslUR;
            aspr2x = 10;
            aspr2y = -37;
        }
        if (aimdirection == 4) {
            aspr2 = sArmMslUR;
            aspr2x = 11;
            aspr2y = -19;
            aspr2a = -90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = 3;
            aspr2y = -42;
            aspr2a = 90;
        }
    }
    if (state == STANDING && landing == 1 && turning == 0) {
        if (aimdirection == 0) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -13;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -20;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -24;
            }
        }
        if (aimdirection == 2) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -26;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = 7;
                aspr2y = -31;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = 8;
                aspr2y = -35;
            }
        }
        if (aimdirection == 4) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -8;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -13;
                aspr2a = -90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -17;
                aspr2a = -90;
            }
        }
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = 3;
                aspr2y = -31;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 1;
                aspr2y = -36;
                aspr2a = 90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = 2;
                aspr2y = -40;
                aspr2a = 90;
            }
        }
    } // if (state == STANDING && landing == 1 && turning == 0)
    if (state == DUCKING && turning == 0) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            aspr2x = 13;
            aspr2y = -13;
        }
        if (aimdirection == 2) {
            aspr2 = sArmMslUR;
            aspr2x = 9;
            aspr2y = -26;
        }
        if (aimdirection == 4) {
            aspr2 = sArmMslUR;
            aspr2x = 11;
            aspr2y = -8;
            aspr2a = -90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = 3;
            aspr2y = -32;
            aspr2a = 90;
        }
    }
    if (state == JUMPING && vjump == 1 && turning == 0) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            aspr2x = 12;
            aspr2y = -23;
        }
        if (aimdirection == 2) {
            aspr2 = sArmMslUR;
            aspr2x = 9;
            aspr2y = -36;
        }
        if (aimdirection == 4) {
            aspr2 = sArmMslUR;
            aspr2x = 11;
            aspr2y = -18;
            aspr2a = -90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = 3;
            aspr2y = -42;
            aspr2a = 90;
        }
        if (aimdirection == 7) {
            aspr2 = sArmMslR;
            aspr2x = 3;
            aspr2y = -7;
            aspr2a = -90;
        }
    } // if (state == JUMPING && vjump == 1 && turning == 0)
    if (state == RUNNING && turning == 0 && walking == 0) {
        if (aimdirection == 0) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -27;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -28;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = 15;
                aspr2y = -29;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslR;
                aspr2x = 16;
                aspr2y = -28;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -28;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -27;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -28;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -29;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslR;
                aspr2x = 15;
                aspr2y = -29;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -28;
            }
        } // if (aimdirection == 0)
        if (aimdirection == 2) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -37;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -38;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -39;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslUR;
                aspr2x = 12;
                aspr2y = -38;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -38;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -37;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -38;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -39;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -39;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -38;
            }
        } // if (aimdirection == 2)
        if (aimdirection == 4) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -19;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -21;
                aspr2a = -90;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslUR;
                aspr2x = 12;
                aspr2y = -20;
                aspr2a = -90;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -19;
                aspr2a = -90;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -20;
                aspr2a = -90;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -21;
                aspr2a = -90;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -21;
                aspr2a = -90;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
        } // if (aimdirection == 4)
    } // if (state == RUNNING && turning == 0 && walking == 0)
    if (state == RUNNING && turning == 0 && walking == 1) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = 14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = 14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = 14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = 14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = 14;
                aspr2y = -26;
            }
        } // if (aimdirection == 0)
        if (aimdirection == 2) {
            aspr2 = sArmMslUR;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = 11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = 11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = 11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = 11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = 11;
                aspr2y = -35;
            }
        } // if (aimdirection == 2)
        if (aimdirection == 4) {
            aspr2 = sArmMslUR;
            aspr2a = -90;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = 11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = 11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = 11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = 11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = 11;
                aspr2y = -17;
            }
        } // if (aimdirection == 4)
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2a = 90;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = 3;
                aspr2y = -41;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = 3;
                aspr2y = -41;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = 3;
                aspr2y = -41;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = 3;
                aspr2y = -41;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = 3;
                aspr2y = -40;
            }
        } // if (aimdirection == 6)
    } // if (state == RUNNING && turning == 0 && walking == 1)
    if (state == GRIP && turning == 0) {
        if (aimdirection == 6) {
            aspr2 = sArmMslL;
            aspr2x = -7;
            aspr2y = -36;
            aspr2a = 90;
        }
        if (aimdirection == 3) {
            aspr2 = sArmMslUL;
            aspr2x = -17;
            aspr2y = -27;
            aspr2a = 90;
        }
        if (aimdirection == 1) {
            aspr2 = sArmMslL;
            aspr2x = -20;
            aspr2y = -18;
            aspr2a = 180;
        }
        if (aimdirection == 5) {
            aspr2 = sArmMslUL;
            aspr2x = -15;
            aspr2y = -9;
            aspr2a = 180;
        }
        if (aimdirection == 7) {
            aspr2 = sArmMslL;
            aspr2x = -5;
            aspr2y = -4;
            aspr2a = -90;
        }
        if (aimdirection == 0) {
            aspr2 = sArmMslL;
            aspr2x = -3;
            aspr2y = -5;
            aspr2a = -90;
        }
    } // if (state == GRIP && turning == 0)
    if (state == GRIP && turning == 1) {
        aspr2 = sArmMslUL;
        aspr2x = -11;
        aspr2y = -10;
        aspr2a = 200;
    }
    if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = -1;
                aspr2y = -42;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 2;
                aspr2y = -42;
                aspr2a = 90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -28;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -28;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -34;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -34;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -15;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -15;
            }
        }
    } // if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1)
    if (state == JUMPING && vjump == 1 && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = -1;
                aspr2y = -43;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 2;
                aspr2y = -43;
                aspr2a = 90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -27;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -27;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -33;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -33;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -14;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -14;
            }
        }
    } // if (state == JUMPING && vjump == 1 && turning == 1)
    if (state == DUCKING && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = -1;
                aspr2y = -33;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 2;
                aspr2y = -33;
                aspr2a = 90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -12;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -26;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -26;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -9;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -9;
            }
        }
    } // if (state == DUCKING && turning == 1)
    if (state == CLIMBING) {
        if (statetime == 0) {
            aspr2 = sArmMslL;
            aspr2x = -4;
            aspr2y = -5;
            aspr2a = -90;
        }
        if (statetime >= 1 && statetime <= 3) {
            aspr2 = sArmMslUR;
            aspr2x = 2;
            aspr2y = -11;
            aspr2a = -90;
        }
        if (statetime >= 4 && statetime <= 6) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -10;
            aspr2a = -90;
        }
        if (statetime == 7) {
            aspr2 = sArmMslUR;
            aspr2x = 6;
            aspr2y = -10;
            aspr2a = -90;
        }
        if (statetime == 8) {
            aspr2 = sArmMslUR;
            aspr2x = 6;
            aspr2y = -11;
            aspr2a = -90;
        }
        if (statetime == 9) {
            aspr2 = sArmMslUR;
            aspr2x = 6;
            aspr2y = -12;
            aspr2a = -90;
        }
        if (statetime == 10) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -9;
            aspr2a = -90;
        }
        if (statetime == 11) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -7;
            aspr2a = -90;
        }
        if (statetime == 12) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -5;
            aspr2a = -90;
        }
        if (statetime == 13) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -3;
            aspr2a = -90;
        }
    } // if (state == CLIMBING)
    if (state == BRAKING && sjball == 0) {
        if (image_index >= 0 && image_index < 1) {
            aspr2 = sArmMslUR;
            aspr2x = -2;
            aspr2y = -14;
            aspr2a = -90;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2 = sArmMslUR;
            aspr2x = 0;
            aspr2y = -15;
            aspr2a = -90;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2 = sArmMslUR;
            aspr2x = 8;
            aspr2y = -18;
            aspr2a = -90;
        }
    }
    if (state == JUMPING && vjump == 0) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = 8;
            aspr2y = -18;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = 5;
            aspr2y = -10;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = 2;
            aspr2y = -2;
        }
        if (image_index >= 3 && image_index < 4) {
            aspr2x = -5;
            aspr2y = -10;
        }
        if (image_index >= 4 && image_index < 5) {
            aspr2x = -8;
            aspr2y = -18;
        }
        if (image_index >= 5 && image_index < 6) {
            aspr2x = -5;
            aspr2y = -24;
        }
        if (image_index >= 6 && image_index < 7) {
            aspr2x = -2;
            aspr2y = -28;
        }
        if (image_index >= 7 && image_index < 8) {
            aspr2x = 5;
            aspr2y = -24;
        }
    } // if (state == JUMPING && vjump == 0)
    if (state == JUMPING && walljumping == 1) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = -6;
            aspr2y = -10;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = -5;
            aspr2y = -10;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = -3;
            aspr2y = -11;
        }
    }
    if (state == SJSTART) {
        if (image_index >= 0 && image_index < 3) {
            aspr2x = 1;
            aspr2y = -15;
        }
        if (image_index >= 3) {
            aspr2x = 1;
            aspr2y = -12;
        }
    }
    if (state == SUPERJUMP && sjdir == 0) {
        if (image_index < 2) {
            aspr2x = 0;
            aspr2y = -12;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = -6;
            aspr2y = -12;
        }
        if (image_index >= 3 && image_index < 4) {
            aspr2x = -9;
            aspr2y = -12;
        }
        if (image_index >= 4 && image_index < 5) {
            aspr2x = -6;
            aspr2y = -12;
        }
        if (image_index >= 5 && image_index < 6) {
            aspr2x = 0;
            aspr2y = -12;
        }
        if (image_index >= 6 && image_index < 7) {
            aspr2x = 5;
            aspr2y = -12;
        }
        if (image_index >= 7 && image_index < 8) {
            aspr2x = 7;
            aspr2y = -12;
        }
        if (image_index >= 8 && image_index < 9) {
            aspr2x = 5;
            aspr2y = -12;
        }
    } // if (state == SUPERJUMP && sjdir == 0)
    if (state == SUPERJUMP && (sjdir == 1 || sjdir == 3)) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = -9;
            aspr2y = -13;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = -12;
            aspr2y = -14;
        }
        if (image_index >= 2) {
            aspr2x = -6;
            aspr2y = -15;
        }
    }
    if (state == SJEND) {
        if (statetime < 10) {
            if (sjdir == 0) {
                aspr2x = 0;
                aspr2y = -12;
            }
            if (sjdir == 1 || sjdir == 3) {
                aspr2x = -12;
                aspr2y = -14;
            }
        }
        if (statetime >= 10 && statetime < 28) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 8;
                aspr2y = -18;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 5;
                aspr2y = -10;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2x = 2;
                aspr2y = -2;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2x = -5;
                aspr2y = -10;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2x = -8;
                aspr2y = -18;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2x = -5;
                aspr2y = -24;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2x = -2;
                aspr2y = -28;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2x = 5;
                aspr2y = -24;
            }
        } // if (statetime >= 10 && statetime < 28)
        if (statetime >= 28) {
            aspr2x = 1;
            aspr2y = -15;
        }
    } // if (state == SJEND)
    if (state == GRABBEDQUEEN) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            aspr2x = 14;
            aspr2y = -27;
        }
    }
} // if (facing == RIGHT && morphing == 0 && unmorphing == 0)
if (facing == LEFT && morphing == 0 && unmorphing == 0) {
    if (state == STANDING && landing == 0 && turning == 0 && armcannon == 1) {
        if (aimdirection == 1) {
            aspr2 = sArmMslR;
            aspr2x = -14;
            aspr2y = -27;
        }
        if (aimdirection == 3) {
            aspr2 = sArmMslUR;
            aspr2x = -10;
            aspr2y = -37;
        }
        if (aimdirection == 5) {
            aspr2 = sArmMslUR;
            aspr2x = -11;
            aspr2y = -19;
            aspr2a = 90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = -3;
            aspr2y = -41;
            aspr2a = -90;
        }
    }
    if (state == STANDING && landing == 1 && turning == 0) {
        if (aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = -12;
                aspr2y = -13;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -12;
                aspr2y = -20;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = -13;
                aspr2y = -24;
            }
        }
        if (aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -26;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = -7;
                aspr2y = -31;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = -8;
                aspr2y = -35;
            }
        }
        if (aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -7;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -12;
                aspr2a = 90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -16;
                aspr2a = 90;
            }
        }
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = -4;
                aspr2y = -31;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -2;
                aspr2y = -36;
                aspr2a = -90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = -3;
                aspr2y = -40;
                aspr2a = -90;
            }
        }
    } // if (state == STANDING && landing == 1 && turning == 0)
    if (state == DUCKING && turning == 0) {
        if (aimdirection == 1) {
            aspr2 = sArmMslR;
            aspr2x = -12;
            aspr2y = -13;
        }
        if (aimdirection == 3) {
            aspr2 = sArmMslUR;
            aspr2x = -9;
            aspr2y = -26;
        }
        if (aimdirection == 5) {
            aspr2 = sArmMslUR;
            aspr2x = -11;
            aspr2y = -8;
            aspr2a = 90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = -4;
            aspr2y = -32;
            aspr2a = -90;
        }
    }
    if (state == JUMPING && vjump == 1 && turning == 0) {
        if (aimdirection == 1) {
            aspr2 = sArmMslR;
            aspr2x = -12;
            aspr2y = -23;
        }
        if (aimdirection == 3) {
            aspr2 = sArmMslUR;
            aspr2x = -9;
            aspr2y = -36;
        }
        if (aimdirection == 5) {
            aspr2 = sArmMslUR;
            aspr2x = -11;
            aspr2y = -18;
            aspr2a = 90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = -4;
            aspr2y = -42;
            aspr2a = -90;
        }
        if (aimdirection == 7) {
            aspr2 = sArmMslR;
            aspr2x = -4;
            aspr2y = -7;
            aspr2a = 90;
        }
    } // if (state == JUMPING && vjump == 1 && turning == 0)
    if (state == RUNNING && turning == 0 && walking == 0) {
        if (aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = -13;
                aspr2y = -27;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -14;
                aspr2y = -28;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = -15;
                aspr2y = -29;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslR;
                aspr2x = -16;
                aspr2y = -28;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslR;
                aspr2x = -14;
                aspr2y = -28;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslR;
                aspr2x = -13;
                aspr2y = -27;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslR;
                aspr2x = -13;
                aspr2y = -28;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslR;
                aspr2x = -14;
                aspr2y = -29;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslR;
                aspr2x = -15;
                aspr2y = -29;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslR;
                aspr2x = -14;
                aspr2y = -28;
            }
        } // if (aimdirection == 1)
        if (aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -37;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -38;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -39;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslUR;
                aspr2x = -12;
                aspr2y = -38;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -38;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -37;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -38;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -39;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -39;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -38;
            }
        } // if (aimdirection == 3)
        if (aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -19;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -21;
                aspr2a = 90;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslUR;
                aspr2x = -12;
                aspr2y = -20;
                aspr2a = 90;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -19;
                aspr2a = 90;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -20;
                aspr2a = 90;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -21;
                aspr2a = 90;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -21;
                aspr2a = 90;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
        } // if (aimdirection == 5)
    } // if (state == RUNNING && turning == 0 && walking == 0)
    if (state == RUNNING && turning == 0 && walking == 1) {
        if (aimdirection == 1) {
            aspr2 = sArmMslR;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = -14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = -14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = -14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = -14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = -14;
                aspr2y = -26;
            }
        } // if (aimdirection == 1)
        if (aimdirection == 3) {
            aspr2 = sArmMslUR;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = -11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = -11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = -11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = -11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = -11;
                aspr2y = -35;
            }
        } // if (aimdirection == 3)
        if (aimdirection == 5) {
            aspr2 = sArmMslUR;
            aspr2a = 90;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = -11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = -11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = -11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = -11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = -11;
                aspr2y = -17;
            }
        } // if (aimdirection == 5)
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2a = 270;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = -4;
                aspr2y = -41;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = -4;
                aspr2y = -41;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = -4;
                aspr2y = -41;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = -4;
                aspr2y = -41;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = -4;
                aspr2y = -40;
            }
        } // if (aimdirection == 6)
    } // if (state == RUNNING && turning == 0 && walking == 1)
    if (state == GRIP && turning == 0) {
        if (aimdirection == 6) {
            aspr2 = sArmMslL;
            aspr2x = 7;
            aspr2y = -35;
            aspr2a = -90;
        }
        if (aimdirection == 2) {
            aspr2 = sArmMslUL;
            aspr2x = 17;
            aspr2y = -26;
            aspr2a = -90;
        }
        if (aimdirection == 0) {
            aspr2 = sArmMslL;
            aspr2x = 20;
            aspr2y = -17;
            aspr2a = 180;
        }
        if (aimdirection == 4) {
            aspr2 = sArmMslUL;
            aspr2x = 15;
            aspr2y = -8;
            aspr2a = 180;
        }
        if (aimdirection == 7) {
            aspr2 = sArmMslL2;
            aspr2x = 5;
            aspr2y = -3;
            aspr2a = 90;
        }
        if (aimdirection == 1) {
            aspr2 = sArmMslL3;
            aspr2x = 4;
            aspr2y = -4;
            aspr2a = 90;
        }
    } // if (state == GRIP && turning == 0)
    if (state == GRIP && turning == 1) {
        aspr2 = sArmMslUL;
        aspr2x = 11;
        aspr2y = -10;
        aspr2a = -200;
    }
    if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = 2;
                aspr2y = -41;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -1;
                aspr2y = -41;
                aspr2a = -90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -28;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -28;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -34;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -34;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -15;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -15;
            }
        }
    } // if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1)
    if (state == JUMPING && vjump == 1 && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = 0;
                aspr2y = -42;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -3;
                aspr2y = -42;
                aspr2a = -90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -27;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -27;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -33;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -33;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -14;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -14;
            }
        }
    } // if (state == JUMPING && vjump == 1 && turning == 1)
    if (state == DUCKING && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = 0;
                aspr2y = -32;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -3;
                aspr2y = -32;
                aspr2a = -90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -12;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -26;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -26;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -9;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -9;
            }
        }
    } // if (state == DUCKING && turning == 1)
    if (state == CLIMBING) {
        if (statetime == 0) {
            aspr2 = sArmMslL3;
            aspr2x = 4;
            aspr2y = -6;
            aspr2a = 90;
        }
        if (statetime >= 4 && statetime <= 6) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -10;
            aspr2a = 90;
        }
        if (statetime == 7) {
            aspr2 = sArmMslUR;
            aspr2x = -8;
            aspr2y = -10;
            aspr2a = 90;
        }
        if (statetime == 8) {
            aspr2 = sArmMslUR;
            aspr2x = -8;
            aspr2y = -11;
            aspr2a = 90;
        }
        if (statetime == 9) {
            aspr2 = sArmMslUR;
            aspr2x = -8;
            aspr2y = -12;
            aspr2a = 90;
        }
        if (statetime == 10) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -9;
            aspr2a = 90;
        }
        if (statetime == 11) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -7;
            aspr2a = 90;
        }
        if (statetime == 12) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -5;
            aspr2a = 90;
        }
        if (statetime == 13) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -3;
            aspr2a = 90;
        }
    } // if (state == CLIMBING)
    

    
        
    /////////////////////////////////////////////////////////////////////END OF SPRITES///////////////////////////////////////////////////////
    
    
    
    if (state == BRAKING && sjball == 0) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = -2;
            aspr2y = -14;
            aspr2a = -90;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2 = sArmMslUR;
            aspr2x = -9;
            aspr2y = -16;
            aspr2a = 90;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2 = sArmMslUR;
            aspr2x = -10;
            aspr2y = -18;
            aspr2a = 90;
        }
    }
    if (state == JUMPING && vjump == 0) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = -8;
            aspr2y = -18;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = -5;
            aspr2y = -10;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = -2;
            aspr2y = -2;
        }
        if (image_index >= 3 && image_index < 4) {
            aspr2x = 5;
            aspr2y = -10;
        }
        if (image_index >= 4 && image_index < 5) {
            aspr2x = 8;
            aspr2y = -18;
        }
        if (image_index >= 5 && image_index < 6) {
            aspr2x = 5;
            aspr2y = -24;
        }
        if (image_index >= 6 && image_index < 7) {
            aspr2x = 2;
            aspr2y = -28;
        }
        if (image_index >= 7 && image_index < 8) {
            aspr2x = -5;
            aspr2y = -24;
        }
    } // if (state == JUMPING && vjump == 0)
    if (state == JUMPING && walljumping == 1) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = 6;
            aspr2y = -10;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = 5;
            aspr2y = -10;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = 3;
            aspr2y = -11;
        }
    }
    if (state == SJSTART) {
        if (image_index >= 0 && image_index < 3) {
            aspr2x = -1;
            aspr2y = -15;
        }
        if (image_index >= 3) {
            aspr2x = -1;
            aspr2y = -12;
        }
    }
    if (state == SUPERJUMP && sjdir == 0) {
        if (image_index < 2) {
            aspr2x = 0;
            aspr2y = -12;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = 6;
            aspr2y = -12;
        }
        if (image_index >= 3 && image_index < 4) {
            aspr2x = 9;
            aspr2y = -12;
        }
        if (image_index >= 4 && image_index < 5) {
            aspr2x = 6;
            aspr2y = -12;
        }
        if (image_index >= 5 && image_index < 6) {
            aspr2x = 0;
            aspr2y = -12;
        }
        if (image_index >= 6 && image_index < 7) {
            aspr2x = -5;
            aspr2y = -12;
        }
        if (image_index >= 7 && image_index < 8) {
            aspr2x = -7;
            aspr2y = -12;
        }
        if (image_index >= 8 && image_index < 9) {
            aspr2x = -5;
            aspr2y = -12;
        }
    } // if (state == SUPERJUMP && sjdir == 0)
    if (state == SUPERJUMP && (sjdir == 2 || sjdir == 4)) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = 9;
            aspr2y = -13;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = 12;
            aspr2y = -14;
        }
        if (image_index >= 2) {
            aspr2x = 1;
            aspr2y = -17;
        }
    }
    if (state == SJEND) {
        if (statetime < 10) {
            if (sjdir == 0) {
                aspr2x = 0;
                aspr2y = -12;
            }
            if (sjdir == 2 || sjdir == 4) {
                aspr2x = 12;
                aspr2y = -14;
            }
        }
        if (statetime >= 10 && statetime < 28) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -8;
                aspr2y = -18;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -5;
                aspr2y = -10;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2x = -2;
                aspr2y = -2;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2x = 5;
                aspr2y = -10;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2x = 8;
                aspr2y = -18;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2x = 5;
                aspr2y = -24;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2x = 2;
                aspr2y = -28;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2x = -5;
                aspr2y = -24;
            }
        } // if (statetime >= 10 && statetime < 28)
        if (statetime >= 28) {
            aspr2x = -1;
            aspr2y = -15;
        }
    } // if (state == SJEND)
    if (state == GRABBEDQUEEN) {
        if (aimdirection == 1 && image_index == 2) {
            aspr2 = sArmMslR;
            aspr2x = -17;
            aspr2y = -25;
        }
    }
} // if (facing == LEFT && morphing == 0 && unmorphing == 0)
if (global.screwattack == 1 && state == JUMPING && vjump == 0 && walljumping == 0 && (inwater == 0 || global.currentsuit >= 2)) {
    if (fxtimer == 0) image_blend = make_color_rgb(120, 0, 160);
    if (fxtimer == 2) image_blend = make_color_rgb(150, 200, 150);
    if (fxtimer == 4) image_blend = make_color_rgb(180, 255, 200);
    instance_create(x, y, oScrewAttack);
    mytrail = instance_create(x, y, oFXTrail);
    mytrail.sprite_index = sprite_index;
    mytrail.image_speed = image_speed;
    mytrail.image_index = image_index;
    mytrail.image_alpha = 0.3 + fxtimer * 0.1;
    mytrail.additive = 1;
    mytrail.fadespeed = 0.4;
    mytrail.depth = -10;
    if (facing == LEFT) mytrail.image_xscale = -1;
    mytrail = instance_create(x, y - 15, oFXTrail);
    mytrail.sprite_index = sScrewSpark;
    mytrail.image_index = round(random(2));
    mytrail.image_alpha = 1 + fxtimer * 0.1;
    mytrail.image_blend = make_color_rgb(50 + random(200), 255, 50 + random(200));
    if (random(10) < 1) mytrail.image_blend = c_white;
    mytrail.additive = 1;
    mytrail.fadespeed = 0.5;
    mytrail.depth = -11;
    if (random(10) < 5) mytrail.image_xscale = -1;
    if (random(10) < 5) mytrail.image_yscale = -1;
} else {
    image_blend = c_white;
} // if (global.screwattack == 1 && state == JUMPING && ...) else
if (state == AIRBALL || state == BALL && charge == 0) {
    if (!instance_exists(oMBTrail)) instance_create(x, y, oMBTrail);
}
if (state == JUMPING && global.spacejump == 1 && vjump == 0 && dash == 0 && charge == 0 && speedboost == 0 && (inwater == 0 || global.currentsuit >= 2)) {
    mytrail = instance_create(x, y - 17, oSpaceJumpTrail);
    mytrail.image_angle = -image_index * 45;
    if (facing == LEFT) mytrail.image_xscale = -1;
}
if (speedboost == 1 || charge > 0 || state == SJSTART || state == SUPERJUMP || state == SJEND && statetime < 10) {
    if (fxtimer == 0) instance_create(x, y, oCharacterTrail);
    if (!instance_exists(oSBTrail)) instance_create(x, y, oSBTrail);
}
if (state == SUPERJUMP || speedboost || state == SJSTART && statetime > 16) {
    mysb = instance_create(x, y, oSpeedBoost);
    if (facing == RIGHT) {
        if (state == SJSTART) {
            if (sjdir == 0) {
                mysb.image_yscale = 1.2;
            } else {
                mysb.x = x + 8;
                mysb.y = y - 2;
                if (sjball == 0) mysb.image_yscale = 1;
                if (sjball == 1) mysb.image_yscale = 0.4;
            }
        }
        if (state == SUPERJUMP) {
            if (sjball == 0) {
                if (xVel != 0) mysb.image_xscale = 1.8;
                if (yVel == 0) mysb.image_yscale = 0.8;
            }
            if (sjball == 1) {
                if (xVel != 0) mysb.image_xscale = 2;
                if (yVel != 0 && xVel == 0) {
                    mysb.image_yscale = 0.7;
                } else mysb.image_yscale = 0.6;
                if (yVel == 0) mysb.image_yscale = 0.4;
            }
        }
        if (state == JUMPING) {
            mysb.x = x + 8;
            mysb.y = y - 4;
            mysb.image_yscale = 1;
            mysb.image_xscale = 2.2;
            mysb2 = instance_create(x + 4, y + 6, oSpeedBoost);
            mysb2.image_xscale = 1.8;
            mysb2.image_yscale = 0.2;
        }
        if (state == AIRBALL && speedboost) {
            mysb.x = x + xVel;
            mysb.y = y + yVel * 2;
            mysb.image_yscale = 0.4;
            mysb.image_xscale = 2;
        }
        if ((state == RUNNING || state == BALL) && speedboost) {
            mysb.x = x + 8;
            mysb.y = y - 2;
            mysb.image_yscale = 0.8;
            if (state == BALL) mysb.image_yscale = 0.4;
            mysb2 = instance_create(x - 12, y + 2, oSpeedBoost);
            mysb2.image_xscale = 0.1;
            mysb2.image_yscale = 0.1;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (state == SJSTART) {
            if (sjdir == 0) {
                mysb.image_yscale = 1.2;
            } else {
                mysb.x = x - 8;
                mysb.y = y - 2;
                if (sjball == 0) mysb.image_yscale = 1;
                if (sjball == 1) mysb.image_yscale = 0.4;
            }
        }
        if (state == SUPERJUMP) {
            if (sjball == 0) {
                if (xVel != 0) mysb.image_xscale = 1.8;
                if (yVel == 0) mysb.image_yscale = 0.8;
            }
            if (sjball == 1) {
                if (xVel != 0) mysb.image_xscale = 2;
                if (yVel != 0 && xVel == 0) {
                    mysb.image_yscale = 0.7;
                } else mysb.image_yscale = 0.6;
                if (yVel == 0) mysb.image_yscale = 0.4;
            }
        }
        if (state == JUMPING) {
            mysb.x = x - 8;
            mysb.y = y - 4;
            mysb.image_yscale = 1;
            mysb.image_xscale = 2.2;
            mysb2 = instance_create(x - 4, y + 6, oSpeedBoost);
            mysb2.image_xscale = 1.8;
            mysb2.image_yscale = 0.2;
        }
        if (state == AIRBALL && speedboost) {
            mysb.x = x + xVel;
            mysb.y = y + yVel * 2;
            mysb.image_yscale = 0.4;
            mysb.image_xscale = 2;
        }
        if ((state == RUNNING || state == BALL) && speedboost) {
            mysb.x = x - 8;
            mysb.y = y - 2;
            mysb.image_yscale = 0.8;
            if (state == BALL) mysb.image_yscale = 0.4;
            mysb2 = instance_create(x + 12, y + 2, oSpeedBoost);
            mysb2.image_xscale = 0.1;
            mysb2.image_yscale = 0.1;
        }
    } // if (facing == LEFT)
} // if (state == SUPERJUMP || speedboost || state == SJSTART && statetime > 16)
if (state == SUPERJUMP && fxtimer == 0 && sjball == 0) {
    if (sjdir == 0) {
        myspark = instance_create(x, y - 32, oFXAnimSpark);
        myspark.image_angle = 90;
        myspark.additive = 1;
    }
    if (sjdir == 1) myspark = instance_create(x + 12, y - 12, oFXAnimSpark);
    if (sjdir == 3) {
        myspark = instance_create(x + 12, y - 16, oFXAnimSpark);
        myspark.image_angle = 20;
    }
    if (sjdir == 2) myspark = instance_create(x - 12, y - 12, oFXAnimSpark);
    if (sjdir == 4) {
        myspark = instance_create(x - 12, y - 16, oFXAnimSpark);
        myspark.image_angle = 340;
    }
    myspark.image_speed = 1;
    myspark.additive = 1;
    if (facing == LEFT && sjdir != 0) myspark.image_xscale = -1;
}
if (state == SUPERJUMP && fxtimer == 0 && sjball == 1) {
    if (sjdir == 0) {
        myspark = instance_create(x, y - 15, oFXAnimSpark);
        myspark.image_angle = 90;
        myspark.additive = 1;
    }
    if (sjdir == 1) myspark = instance_create(x + 10, y - 6, oFXAnimSpark);
    if (sjdir == 3) {
        myspark = instance_create(x + 10, y - 8, oFXAnimSpark);
        myspark.image_angle = 20;
    }
    if (sjdir == 2) myspark = instance_create(x - 10, y - 6, oFXAnimSpark);
    if (sjdir == 4) {
        myspark = instance_create(x - 10, y - 8, oFXAnimSpark);
        myspark.image_angle = 340;
    }
    myspark.image_speed = 1;
    myspark.additive = 1;
    if (facing == LEFT && sjdir != 0) myspark.image_xscale = -1;
}
if (state == RUNNING && speedboost && (fxtimer == 0 || fxtimer == 2 || fxtimer == 4)) myspark = instance_create(x, y - random(36), oSBSpark);
if (onfire && fxtimer == 0) {
    if (mask_index == sMask1) {
        expl = instance_create(x + random_range(-8, 8), y - random(28), oFXAnimSpark);
    } else expl = instance_create(x + random_range(-8, 8), y - random(16), oFXAnimSpark);
    expl.image_speed = 0.5;
    expl.additive = 0;
    expl.sprite_index = sExpl1;
    expl.depth = -10;
    expl.image_xscale = 0.5;
    expl.image_yscale = 0.5;
}
