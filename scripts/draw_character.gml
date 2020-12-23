/// draw_character(sprite, x, y, sprite2, s2ox, s2oy, sprite3, s3ox, s3oy, s3angle, facing, color, alpha, s3show)

if ((oControl.mod_fusion) && (!oControl.msr_fusionsuit)) { // Fusion suit
    if (global.currentsuit == 0) { // Power
        pal_swap_set(sPalFusion0, 1, false);
    } else if (global.currentsuit == 1) { // Varia
        pal_swap_set(sPalFusion1, 1, false);
    } else if (global.currentsuit == 2) { // Gravity
        pal_swap_set(sPalFusion2, 1, false);
    }
} else { // Custom color swaps
    if (global.currentsuit == 0) { // Power
        pal_swap_set(oControl.PowerPalette, 1, false);
    } else if (global.currentsuit == 1) { // Varia
        pal_swap_set(oControl.VariaPalette, 1, false);
    } else if (global.currentsuit == 2) { // Gravity
        pal_swap_set(oControl.GravityPalette, 1, false);
    }
}

draw_sprite_ext(argument0, argument14, argument1, argument2, argument10, 1, 0, argument11, argument12);
draw_sprite_ext(argument3, argument14, argument1 + argument4, argument2 + argument5, argument10, 1, 0, argument11, argument12);
if (argument13 == 1) {
    draw_sprite_ext(argument6, argument14, argument1 + argument7, argument2 + argument8, argument10, 1, argument9, argument11, argument12);
}

shader_reset();
