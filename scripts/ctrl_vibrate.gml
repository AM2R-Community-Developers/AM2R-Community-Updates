/// ctrl_vibrate()
if (global.opxjoyvib && (!instance_exists(oBigQuake)) && (!instance_exists(oBigQuakeQueen))) {
    if(os_type != os_android) {
        global.vibL = argument0;
        global.vibR = argument1;
        with (oVibrate) instance_destroy();
        o = instance_create(0, 0, oVibrate);
        o.alarm[0] = argument2;
    }
    else {   
        if(floor(argument2) == 10) {
            immersion_play_effect(6);
        } else if(floor(argument2) == 15) {
            immersion_play_effect(15);
        } else if(floor(argument2) == 20) {
            immersion_play_effect(82);
        }
    }
}
