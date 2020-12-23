/// debug_view_1()
if (instance_exists(oCharacter) && instance_exists(oCamera) && global.ingame) {
    i = 0;
    debug_draw_var("X: ", oCharacter.x);
    debug_draw_var("Y: ", oCharacter.y);
    debug_draw_var("HSpeed: ", oCharacter.xVel);
    debug_draw_var("VSpeed: ", oCharacter.yVel);
    debug_draw_var("aimlock: ", oCharacter.aimlock);
    debug_draw_var("runAcc: ", oCharacter.runAcc);
    debug_draw_var("xAcc: ", oCharacter.xAcc);
    debug_draw_var("xFric: ", oCharacter.xFric);
    debug_draw_var("State: ", oCharacter.state);
    debug_draw_var("Statetime: ", oCharacter.statetime);
    debug_draw_var("canbehit: ", oCharacter.canbehit);
    debug_draw_var("Facing: ", oCharacter.facing);
    debug_draw_var("Sprite IDX: ", oCharacter.sprite_index);
    debug_draw_var("Image IDX: ", oCharacter.image_index);
    debug_draw_var("vjump: ", oCharacter.vjump);
    debug_draw_var("WJ: ", oCharacter.walljumping);
    debug_draw_var("No VJump: ", oCharacter.novjump);
    debug_draw_var("CAM X: ", oCamera.x);
    debug_draw_var("CAM Y: ", oCamera.y);
    debug_draw_var("CAM Target X: ", oCamera.targetx);
    debug_draw_var("CAM Target Y: ", oCamera.targety);
    debug_draw_var("Walking: ", oCharacter.walking);
    debug_draw_var("JWalk: ", oCharacter.jwalk);
    debug_draw_var("Control: ", global.controltype);
    debug_draw_var("NoMorph: ", oCharacter.nomorph);
    debug_draw_var("Dash: ", oCharacter.dash);
    debug_draw_var("shinespark: ", oCharacter.shinespark);
    debug_draw_var("SBoost: ", oCharacter.speedboost);
    debug_draw_var("SBSteps: ", oCharacter.speedboost_steps);
    debug_draw_var("InWater: ", oCharacter.inwater);
    debug_draw_var("WF: ", oCharacter.waterfall);
    debug_draw_var("ballfall: ", oCharacter.ballfall);
    if (instance_exists(oQueen)) {
        debug_draw_var("Qeen TargetX: ", oQueen.targetx);
        debug_draw_var("Qeen X: ", oQueen.x);
        debug_draw_var("Qeen State: ", oQueen.state);
        debug_draw_var("Qeen StateTime: ", oQueen.statetime);
        debug_draw_var("Phase: ", oQueen.phase);
        debug_draw_var("HP: ", oQueenHead.myhealth);
        debug_draw_var("Col Back: ", oQueen.col_back);
        debug_draw_var("Col Front: ", oQueen.col_front);
        debug_draw_var("Hspeed: ", oQueen.hspeed);
        debug_draw_var("Dist: ", point_distance(oQueen.x, oQueen.y, oCharacter.x, oQueen.y));
        debug_draw_var("HeadST: ", oQueenHead.state);
        debug_draw_var("HeadST_Time: ", oQueenHead.statetime);
        debug_draw_var("HeadSnap: ", oQueen.head_target_snap);
        debug_draw_var("CANBEHIT: ", oQueenHead.canbehit);
        debug_draw_var("Height Front: ", oQueen.height_front);
        debug_draw_var("Height Back: ", oQueen.height_front);
    }
    if (instance_exists(oMOmega)) {
        debug_draw_var("OMEGA", "----------------------------");
        debug_draw_var("State: ", oMOmega.state);
        debug_draw_var("StateTime: ", oMOmega.statetime);
        debug_draw_var("target_mode: ", oMOmega.target_mode);
        debug_draw_var("targetx: ", oMOmega.targetx);
        debug_draw_var("distance: ", point_distance(oMOmega.x, oMOmega.y, oCharacter.x, oCharacter.y));
        debug_draw_var("HP: ", oMOmega.myhealth);
    }
    if (instance_exists(oErisHead)) {
        debug_draw_var("SERRIS", "---------------------------");
        debug_draw_var("State: ", oErisHead.state);
        debug_draw_var("StateTime: ", oErisHead.statetime);
        debug_draw_var("target: ", oErisHead.tgt);
        debug_draw_var("HP: ", oErisHead.hp);
        debug_draw_var("boosting: ", oErisHead.boosting);
        //debug_draw_var("boostphase: ", oErisHead.boostphase);
        debug_draw_var("flashing: ", oErisHead.flashing);
        debug_draw_var("speed: ", oErisHead.speed);
        debug_draw_var("x: ", oErisHead.x);
        debug_draw_var("y: ", oErisHead.y);
        debug_draw_var("turnspeed: ", oErisHead.turnspeed);
        debug_draw_var("direction: ", oErisHead.direction);
        debug_draw_var("player dir: ", point_direction(oErisHead.x, oErisHead.y, oCharacter.x, oCharacter.y));
    }
    if (instance_exists(oGenesis)) {
        debug_draw_var("GENESIS", "---------------------------");
        debug_draw_var("State: ", oGenesis.state);
        debug_draw_var("StateTime: ", oGenesis.statetime);
        debug_draw_var("HP: ", oGenesis.hp);
        debug_draw_var("turnframe: ", oGenesis.turnframe);
    }
    if (instance_exists(oCoreXShell)) {
        debug_draw_var("CORE-X SHELL", "---------------------------");
        debug_draw_var("State: ", oCoreXShell.state);
        debug_draw_var("x: ", oCoreXShell.x);
        debug_draw_var("y: ", oCoreXShell.y);
    }
} // if (instance_exists(oCharacter) && instance_exists(oCamera) && global.ingame)
