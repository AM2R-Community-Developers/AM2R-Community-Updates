///scr_suit_sprites(orginal_suit,fusion_suit)

if (oControl.mod_fusion == 1 || oControl.mod_suitchangecheat == 1) { 
    if(global.currentsuit == 0) {
        return argument1;
    }
    else if(global.currentsuit == 1) {
        return asset_get_index(sprite_get_name(argument1) + "_varia");
    }
    else if (global.currentsuit == 2) {
        return asset_get_index(sprite_get_name(argument1) + "_gravity");
    }
}
else { return argument0; }

