/// damage_player(damage, knockback_x, knockback_y, ignore_armor, ignore_invincibility)
var damage_taken;
if (global.currentsuit == 0 || argument3 == 1) damage_taken = argument0 * oControl.mod_diffmult; //((global.difficulty == 2) + 1) * oControl.mod_fusion;
if (argument3 == 0) {
    if (global.currentsuit == 1) damage_taken = ceil(argument0 * 0.5) * oControl.mod_diffmult; //((global.difficulty == 2) + 1) * oControl.mod_fusion;
    //if (global.currentsuit == 2) damage_taken = ceil(argument0 * 0.25) * oControl.mod_diffmult; //((global.difficulty == 2) + 1) * oControl.mod_fusion;
    if (global.currentsuit == 2) {                                                     
        if(global.item[5] == 0) 
            damage_taken = ceil(argument0 * 0.5) * oControl.mod_diffmult
        else                   
            damage_taken = ceil(argument0 * 0.25) * oControl.mod_diffmult;
    } //added
}
if (global.playerhealth > 0) with (oCharacter) {
    if (state != HURT && invincible == 0 || argument4 == 1 && statetime > 2) {
        if (canbehit) {
            if (state == BALL || state == AIRBALL || state == SPIDERBALL || sjball == 1) {
                sjball = 1;
                fixedx = 12;
                sball = 0;
            } else sjball = 0;
            state = HURT;
            statetime = 0;
            canturn = 0;
            image_index = 0;
            if (other.x >= x) xVel = -argument1;
            if (other.x < x) xVel = argument1;
            yVel = argument2;
            sfx_play(sndHurt);
            ctrl_vibrate(0.5, 0.5, 10);
            invincible = 60;
            if (inwater) {
                repeat (3 + floor(random(3))) {
                    bubble = instance_create(x, y - 6 - random(20), oLBubble);
                    if (instance_exists(bubble)) {
                        bubble.hspeed = 1 - random(2);
                        bubble.vspeed = -0.1 - random(1);
                    }
                }
            }
            global.playerhealth -= damage_taken;
        } // if (canbehit)
    } // if (state != HURT && invincible == 0 || argument4 == 1 && statetime > 2)
    if (global.playerhealth <= 0 && state != DEFEATED) {
        alarm[0] = 6;
        state = DEFEATED;
    }
} // if (global.playerhealth > 0)
