/// spawn_random_septogg(percent of solids to check, number to spawn, spawn chance (out of 99));
// This script attempts to find proper, random locations to spawn small Septoggs. It does not guarantee any will be spawned. Should be used in a Room Start event for best results.

if(juststarted > 0 || room == rm_a0h01) exit;

if(global.lastSpawnRoom == room) exit;

global.lastSpawnRoom = room;

var roomnum = string(string_char_at(room_get_name(room), 5) + string_char_at(room_get_name(room), 6)); // Don't spawn in Gene Lab or ending caves.

if(roomnum == "7b" or roomnum == "7c" or instance_exists(oSaveStation) or instance_exists(oMAlphaTriggerProx) or instance_exists(oMAlpha2TriggerProx) or instance_exists(oMalpha3TriggerProx) or instance_exists(oMAlphaTriggerA2) or instance_exists(oMGammaTriggerProx) or instance_exists(oMZeta_Cocoon) or instance_exists(oMOmega) or instance_exists(oQueen) or (room == rm_a0h05 and global.event[0] == 0) or (room == rm_a0h01 and global.timeofday == 2) or (room == rm_a0h14 or room == rm_a0h15) or instance_exists(oMGammaA3BTrigger) or instance_exists(oItem)) exit;

if(global.roomsSinceLastSpawn > 1) {
    global.roomsSinceLastSpawn --;
    exit;
}

global.roomsSinceLastSpawn = 3;

if(irandom(99) >= argument2) exit;

var list         = ds_list_create(),                    // List to keep track of locations that have already been checked.
    num_attempts = instance_number(oSolid)*argument0,
    num_spawn    = argument1,
    i            = 0,
    j            = 0,
    inst, choice;
    
while((i < num_attempts) && (j < num_spawn)) {
    i++;
    
    // Choose a random solid in the room.
    do choice = irandom(instance_number(oSolid) - 1); until (ds_list_find_index(list, choice) == -1);
    
    ds_list_add(list, choice);
    
    inst = instance_find(oSolid, choice);    
    
    if (instance_exists(inst)) // Begin checking if this location is good to spawn at.
    {
        with(inst)
        {
            if(object_get_parent(object_index) != oSlope) // If solid is not a slope...
            {
                if(!is_breakable_block(object_index)) // If solid is not breakable...
                {
                    if(y >= 32 and y < room_height and x >= 96 and x < room_width - 96) // If instance is not at the edges of the room...
                    {
                        if(global.waterlevel == 0 or y < global.waterlevel) // If not in liquid...
                        {
                            if(image_xscale == 1 && image_yscale == 1) // If the solid has not been resized...
                            {
                                var offset = irandom(floor(sprite_width/16) - 1) * 16; // If the solid is wider than 1 block, then choose a location along the width of the solid.
                                
                                if(collision_line(x+8+offset, y-8, x+8+offset, y-64, oSolid, false, true) == noone) // If there are no solids a certain distance above...
                                {
                                    if(collision_line(x+8+offset, y-8, x+8+offset, y-32, oSpikePlant, false, true) == noone && collision_line(x+8+offset, y-8, x+8+offset, y-32, oSpikes, false, true) == noone && collision_line(x+8+offset, y-8, x+8+offset, y-32, oPlantSpikes, false, true) == noone) // If it is not among spikes...
                                    {
                                        if((get_ground_tile(x+8+offset, y-8) == -1 || get_ground_tile(x+8+offset, y-40) == -1) && !(get_ground_tile(x+8+offset, y-8) == -1 && get_ground_tile(x+8+offset, y-40) != -1)) // If there are no tiles above (ceiling check)...
                                        { 
                                            var type = baby_septogg_sprite(x+8+offset, y+8);
                                            
                                            if(type != -1) {    // If a tileset version exists for this type of Septogg...
                                                j++;
                                                // ...then create the Septogg!
                                                var inst = instance_create(x+8+offset, y, oBabySeptogg);                            
                                                
                                                with(inst) {
                                                    sprite_index = type;                          
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

ds_list_destroy(list);
