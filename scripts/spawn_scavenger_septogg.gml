// Spawn Septogg based on area.

if(instance_exists(oMAlphaTriggerProx) or instance_exists(oMAlpha2TriggerProx) or instance_exists(oMalpha3TriggerProx) or instance_exists(oMAlphaTriggerA2) or instance_exists(oMGammaTriggerProx) or instance_exists(oMGammaA3BTrigger)) exit;

var ratio = 0,
    spawn_septoggs = 0;

switch (real(string_char_at(room_get_name(room), 5))) {
    case 0:
        if(room == rm_a0h18)
            ratio = (global.metdead[25] + global.metdead[26])/2;            
        else
            ratio = (global.metdead[0])/1;
        break;
    case 1: 
        ratio = (global.metdead[1] + global.metdead[2] + global.metdead[3] + global.metdead[4])/4;
        break;
    case 2: 
        ratio = (global.metdead[5] + global.metdead[6] + global.metdead[7] + global.metdead[8] + global.metdead[9] + global.metdead[10] + global.metdead[11] + global.metdead[12])/8;
        break;
    case 3: 
        ratio = (global.metdead[13] + global.metdead[14] + global.metdead[15] + global.metdead[16] + global.metdead[17] + global.metdead[18] + global.metdead[19] + global.metdead[20] + global.metdead[21] + global.metdead[22])/10;
        break;
    case 4: 
        ratio = (global.metdead[27] + global.metdead[28] + global.metdead[29] + global.metdead[30] + global.metdead[31] + global.metdead[32])/6;
        break;
    case 5: 
        ratio = (global.metdead[33] + global.metdead[34] + global.metdead[35] + global.metdead[36] + global.metdead[37] + global.metdead[38] + global.metdead[39] + global.metdead[40])/8;
        break;
    case 6: 
        ratio = (global.metdead[41] + global.metdead[42] + global.metdead[43] + global.metdead[44] + global.metdead[45])/5;
        break;
    default: 
        exit;
}

spawn_septoggs = floor(ratio*3);

var driftmin = 0.015,
    driftmax = 0.025;

var inst;

switch (spawn_septoggs) {
    case 1: 
        inst = instance_create(x, y-23, oBabySeptogg);
    
        with (inst) {
            scavenge = other.id;
            depth = other.depth - 1;
            frequency_x = choose(-1, 1) * random_range(driftmin, driftmax);
            amplitude_x = 16;
            frequency_y = choose(-1, 1) * random_range(driftmin, driftmax)*2;
            amplitude_y = 5;
            alarm[0] = 1;
        }
        break;
        
    case 2: 
        inst = instance_create(x-10, y-23, oBabySeptogg);
    
        with (inst) {
            scavenge = other.id;
            depth = other.depth - 1;
            frequency_x = choose(-1, 1) * random_range(driftmin, driftmax);
            amplitude_x = 6;
            frequency_y = choose(-1, 1) * random_range(driftmin, driftmax)*2;
            amplitude_y = 5;
            alarm[0] = 1;
        }
        
        inst = instance_create(x+10, y-23, oBabySeptogg);
    
        with (inst) {
            scavenge = other.id;
            depth = other.depth - 2;
            frequency_x = choose(-1, 1) * random_range(driftmin, driftmax);
            amplitude_x = 6;
            frequency_y = choose(-1, 1) * random_range(driftmin, driftmax)*2;
            amplitude_y = 5;
            alarm[0] = 1;
        }
        break;
        
    case 3: 
        if (object_index == oMEgg1) frame = 6;
        else image_index = 2;
        
        inst = instance_create(x-13, y-23, oBabySeptogg);
    
        with (inst) {
            scavenge = other.id;
            depth = other.depth - 1;
            frequency_x = choose(-1, 1) * random_range(driftmin, driftmax);
            amplitude_x = 3;
            frequency_y = choose(-1, 1) * random_range(driftmin, driftmax)*2;
            amplitude_y = 5;
            alarm[0] = 1;
        }
        
        inst = instance_create(x, y-23, oBabySeptogg);
    
        with (inst) {
            scavenge = other.id;
            depth = other.depth - 3;
            frequency_x = choose(-1, 1) * random_range(driftmin, driftmax);
            amplitude_x = 3;
            frequency_y = choose(-1, 1) * random_range(driftmin, driftmax)*2;
            amplitude_y = 5;
            alarm[0] = 1;
        }
        
        inst = instance_create(x+13, y-23, oBabySeptogg);
    
        with (inst) {
            scavenge = other.id;
            depth = other.depth - 2;
            frequency_x = choose(-1, 1) * random_range(driftmin, driftmax);
            amplitude_x = 3;
            frequency_y = choose(-1, 1) * random_range(driftmin, driftmax)*2;
            amplitude_y = 5;
            alarm[0] = 1;
        }
        break;
}
