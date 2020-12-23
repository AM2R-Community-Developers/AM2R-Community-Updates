/// spawn_rnd_pickup(chance)
if (random(100) < argument0) {
    if(canbeX == 1) xParasite = "What, you expected something useful?";
    
    var xx = mean(bbox_left, bbox_right),
        yy = mean(bbox_top, bbox_bottom);
    
    pickup = irandom(3);
    
    var spawnX = 0;
    if((global.playerhealth == global.maxhealth) && (global.missiles == global.maxmissiles) && (global.smissiles == global.maxsmissiles)) {
        spawnX = irandom(1); // 50% chance to Spawn an X even if health, missles, and supers are full.
    }
    
    if ((global.item[0] == 0 && global.maxpbombs > 0) || oControl.mod_insanitymode == 1) pickup = irandom(4); 
    
    if (pickup == 0) {
        if ((global.playerhealth < global.maxhealth && instance_number(oHPickup) < 6) || (oControl.mod_fusion == 1 && spawnX == 1 && canbeX && instance_number(oHPickup) < 6)) {
            if(oControl.mod_fusion == 1 && canbeX == 1) {
                xParasite = instance_create(xx, yy, oHXPickup);
            }
            else instance_create(xx, yy, oHPickup);
        } else pickup = 2;
    }
    if (pickup == 1) {
        if ((global.playerhealth < global.maxhealth && instance_number(oHPickupBig) < 3) || (oControl.mod_fusion == 1 && spawnX == 1 && canbeX && instance_number(oHPickupBig) < 3)) {
            if(oControl.mod_fusion == 1 && canbeX == 1) {
                xParasite = instance_create(xx, yy, oHXPickupBig);
            }
            else instance_create(xx, yy, oHPickupBig);
        } else pickup = 2;
    }
    if (pickup == 2) {
        if (global.missiles < global.maxmissiles && global.maxmissiles > 0 && instance_number(oMPickup) < 8 || (oControl.mod_fusion == 1 && spawnX == 1 && canbeX && instance_number(oMPickup) < 8)) {
            if(oControl.mod_fusion == 1 && canbeX == 1) {
                xParasite = instance_create(xx, yy, oMXPickup);
            }
            else instance_create(xx, yy, oMPickup);
        } else pickup = 3;
    }
    if (pickup == 3) {
        if (global.smissiles < global.maxsmissiles && global.maxsmissiles > 0 && instance_number(oSMPickup) < 2) {
            if(oControl.mod_fusion == 1 && canbeX == 1) {
                xParasite = instance_create(xx, yy, oSMXPickup);
            }
            else instance_create(xx, yy, oSMPickup);
        } else if ((global.item[0] == 0 && global.maxpbombs > 0) || oControl.mod_insanitymode == 1) pickup = 4;
    }
    if (pickup == 4) {
        if (global.pbombs < global.maxpbombs && global.maxpbombs > 0 && instance_number(oPBPickup) < 2) {
            if(oControl.mod_fusion == 1 && canbeX == 1) {
                xParasite = instance_create(xx, yy, oPBXPickup); 
            }
            else instance_create(xx, yy, oPBPickup);
        }
    }
    if (canbeX == 1 && instance_exists(xParasite) && oControl.mod_fusion == 1) {
        if(object_index == oEnemyFrozen) {
            xParasite.lastSprite = xSprite;
            xParasite.lastFrame = xLastFrame;
            xParasite.lastFacing = xLastFacing;
            xParasite.lastAngle = xLastAngle;
            xParasite.lastDepth = xLastDepth;
            xParasite.lastXPos = xLastXPos;
            xParasite.lastYPos = xLastYPos;
            xParasite.lastEnemy = xLastEnemy;
            xParasite.frozenAngle = image_angle;
        }
        else {
            xParasite.lastSprite = sprite_index;
            xParasite.lastFrame = image_index;
            xParasite.lastFacing = image_xscale;
            xParasite.lastAngle = image_angle;
            xParasite.lastDepth = depth;
            xParasite.lastXPos = xstart;
            xParasite.lastYPos = ystart;
            xParasite.lastEnemy = object_index;
        }
        xParasite.lastEnemyX = x;
        xParasite.lastEnemyY = y;
        xParasite.lastYscale = image_yscale;
        xParasite.lastEnemyTimer = timer;
        xParasite.lastEnemyRotspeed = rotspeed;
        xParasite.lastEnemyMyspeed = myspeed;
        xParasite.lastEnemyOffset = offset;
        xParasite.lastEnemyMoveratio = moveratio;
        xParasite.lastEnemyMovesteps = movesteps;
        if (object_index == oHalzyn) {
            xParasite.lastEnemyGlow = glow;
        }
        if (sprite_index == sHalzynBodyFrozen) {
            xParasite.lastEnemyGlow = xLastGlow;
        }
    }
}
