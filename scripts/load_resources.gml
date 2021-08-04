
// Header delay setups, has to be here or Android breaks.

for (var l = 1; l < 9; l ++) { // Set the baseline for all
    oControl.mod_header[l, 1] = 0;
    oControl.mod_header[l, 2] = 3;
}
// A1
oControl.mod_header[1, 3] = 19;
oControl.mod_header[1, 4] = 21;
// A2
oControl.mod_header[2, 3] = 19;
oControl.mod_header[2, 4] = 21;
// A3
oControl.mod_header[3, 3] = 24;
oControl.mod_header[3, 4] = 26;
// A4
oControl.mod_header[4, 3] = 15;
oControl.mod_header[4, 4] = 17;
// A5
oControl.mod_header[5, 3] = 26;
oControl.mod_header[5, 4] = 28;
// Lab/A7
oControl.mod_header[7, 2] = 7;
oControl.mod_header[7, 3] = 9;
oControl.mod_header[7, 4] = 17;
// Thoth/A8
oControl.mod_header[8, 3] = 15;
oControl.mod_header[8, 4] = 17;

/*
var lin = "";

if (os_type == os_linux) {
    lin = "/assets";
}
*/

// Suit Palettes, MonsterPalettesFusionOnly and Metroid Pallettes definition
oControl.PowerPalette = -1;
oControl.VariaPalette = -1;
oControl.GravityPalette = -1;

oControl.MonsterPalettesFusionOnly = 1;

oControl.AlphaPalette = -1;
oControl.GammaPalette = -1;
oControl.ZetaPalette = -1;
oControl.OmegaPalette = -1;
oControl.QueenPalette = -1;
oControl.ZetaBlur = -1;
oControl.QueenDead = -1;
oControl.QueenBloodDrop = -1;
oControl.QueenBloodParticle = -1;

if(os_type == os_android) exit; // "Safety Check" on Android

//Area Headers
// Changed from program_directory to working_directory
// Format: language_aArea_fFrames_bPause1_cPause2_dPause3_ePause4.png
var filename = file_find_first("lang/headers/" + "*.png", 0);
while(filename != "") {
    if(string_pos(string_lower(string_replace(get_text("Header", "Language"), " (16:9)", "")), string_lower(filename)) != 0) {
        var harea = string_pos("_a", string_lower(filename)),
            hframes = string_pos("_f", string_lower(filename)),
            hd1 = string_pos("_b", string_lower(filename)),
            hd2 = string_pos("_c", string_lower(filename)),
            hd3 = string_pos("_d", string_lower(filename)),
            hd4 = string_pos("_e", string_lower(filename));
            //show_debug_message("harea = " + string(harea));
        
        if(harea != 0) {
            harea = real(string_digits(string_char_at(filename, harea + 2)));
            //show_debug_message("harea = " + string(harea));
            if(hframes != 0) {
                hframes = real(string_digits(string_char_at(filename, hframes + 2) + string_char_at(filename, hframes + 3)));
                oControl.mod_header[harea, 0] = hframes;
            }
            if(hd1 != 0) oControl.mod_header[harea, 1] = real(string_digits(string_char_at(filename, hd1 + 2) + string_char_at(filename, hd1 + 3)));
            if(hd2 != 0) oControl.mod_header[harea, 2] = real(string_digits(string_char_at(filename, hd2 + 2) + string_char_at(filename, hd2 + 3)));
            if(hd3 != 0) oControl.mod_header[harea, 3] = real(string_digits(string_char_at(filename, hd3 + 2) + string_char_at(filename, hd3 + 3)));
            if(hd4 != 0) oControl.mod_header[harea, 4] = real(string_digits(string_char_at(filename, hd4 + 2) + string_char_at(filename, hd4 + 3)));
            
            sprite_replace(asset_get_index("sIntro_A" + string(harea)), "lang/headers/" + filename, hframes, false, false, 0, 0);
        }
    }
    filename = file_find_next();
}
file_find_close();

//Title Logo
var filename = file_find_first("lang/titles/" + "*.png", 0);
while(filename != "") {
    if(string_pos(string_lower(string_replace(get_text("Header", "Language"), " (16:9)", "")), string_lower(filename)) != 0) {            
        var titlex = string_pos("x", string_lower(filename)),
            titley =  string_pos("y", string_lower(filename));   
            
        var xnegative = string_pos("-x", string_lower(filename));
            
        if(titlex != 0) oControl.mod_xcoordinate = real(string_digits(string_char_at(filename, titlex + 1) + string_char_at(filename, titlex + 2) + string_char_at(filename, titlex + 3)));
        if(titley != 0) oControl.mod_ycoordinate = real(string_digits(string_char_at(filename, titley + 1) + string_char_at(filename, titley + 2) + string_char_at(filename, titley + 3)));
        if(xnegative != 0) oControl.mod_xcoordinate = -oControl.mod_xcoordinate;

        background_replace(bgAM2RTitle, "lang/titles/" + filename, false, false);
    }
    filename = file_find_next();
}
file_find_close();

//Title Background
var filename = file_find_first("*.png", 0);
while(filename != "") {
    if(string_pos("titlebackground", filename) != 0) {
        oControl.mod_backgroundframes = 1;
        oControl.mod_backgroundspeed = 60;
        
        var bgframes = string_pos("f", string_lower(filename)),
            bgspeed =  string_pos("s", string_lower(filename));   
    
        if(bgframes != 0) oControl.mod_backgroundframes = real(string_digits(string_char_at(filename, bgframes + 1) + string_char_at(filename, bgframes + 2)));
        if(bgspeed != 0) oControl.mod_backgroundspeed = real(string_digits(string_char_at(filename, bgspeed + 1) + string_char_at(filename, bgspeed + 2)));

        sprite_replace(sTitleAnimated, filename, oControl.mod_backgroundframes, false, false, 0, 0);
    }
    filename = file_find_next();
}
file_find_close();



// ***Suit palettes***
if (file_exists("mods/palettes/suits/power.png")) oControl.PowerPalette = sprite_add("mods/palettes/suits/power.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/suits/varia.png")) oControl.VariaPalette = sprite_add("mods/palettes/suits/varia.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/suits/gravity.png")) oControl.GravityPalette = sprite_add("mods/palettes/suits/gravity.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/suits/fusion_power.png")) sprite_replace(sPalFusion0, "mods/palettes/suits/fusion_power.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/suits/fusion_varia.png")) sprite_replace(sPalFusion1, "mods/palettes/suits/fusion_varia.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/suits/fusion_gravity.png")) sprite_replace(sPalFusion2, "mods/palettes/suits/fusion_gravity.png", 1, false, false, 0, 0);


// Space jump trails
if (file_exists("mods/palettes/suits/SpaceJumpTrails/power.png")) sprite_replace(sSpaceJumpTrail, "mods/palettes/suits/SpaceJumpTrails/power.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrail), sprite_get_yoffset(sSpaceJumpTrail));
if (file_exists("mods/palettes/suits/SpaceJumpTrails/varia.png")) sprite_replace(sSpaceJumpTrailVaria, "mods/palettes/suits/SpaceJumpTrails/varia.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailVaria), sprite_get_yoffset(sSpaceJumpTrailVaria));
if (file_exists("mods/palettes/suits/SpaceJumpTrails/gravity.png")) sprite_replace(sSpaceJumpTrailGravity, "mods/palettes/suits/SpaceJumpTrails/gravity.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailGravity), sprite_get_yoffset(sSpaceJumpTrailGravity));
if (file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_power.png")) sprite_replace(sSpaceJumpTrail_fusion, "mods/palettes/suits/SpaceJumpTrails/fusion_power.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrail_fusion), sprite_get_yoffset(sSpaceJumpTrail_fusion));
if (file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_varia.png")) sprite_replace(sSpaceJumpTrailVaria_fusion, "mods/palettes/suits/SpaceJumpTrails/fusion_varia.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailVaria_fusion), sprite_get_yoffset(sSpaceJumpTrailVaria_fusion));
if (file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_gravity.png")) sprite_replace(sSpaceJumpTrailGravity_fusion, "mods/palettes/suits/SpaceJumpTrails/fusion_gravity.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailGravity_fusion), sprite_get_yoffset(sSpaceJumpTrailGravity_fusion));

// Spiderball glows
if (file_exists("mods/palettes/suits/SpiderBallGlow/power.png")) sprite_replace(sSpiderballFX, "mods/palettes/suits/SpiderBallGlow/power.png", 1, false, false, sprite_get_xoffset(sSpiderballFX), sprite_get_yoffset(sSpiderballFX));
if (file_exists("mods/palettes/suits/SpiderBallGlow/varia.png")) sprite_replace(sSpiderballFXVaria, "mods/palettes/suits/SpiderBallGlow/varia.png", 1, false, false, sprite_get_xoffset(sSpiderballFXVaria), sprite_get_yoffset(sSpiderballFXVaria));
if (file_exists("mods/palettes/suits/SpiderBallGlow/gravity.png")) sprite_replace(sSpiderballFXGravity, "mods/palettes/suits/SpiderBallGlow/gravity.png", 1, false, false, sprite_get_xoffset(sSpiderballFXGravity), sprite_get_yoffset(sSpiderballFXGravity));
if (file_exists("mods/palettes/suits/SpiderBallGlow/fusion_power.png")) sprite_replace(sSpiderballFX_fusion, "mods/palettes/suits/SpiderBallGlow/fusion_power.png", 1, false, false, sprite_get_xoffset(sSpiderballFX_fusion), sprite_get_yoffset(sSpiderballFX_fusion));
if (file_exists("mods/palettes/suits/SpiderBallGlow/fusion_varia.png")) sprite_replace(sSpiderballFXVaria_fusion, "mods/palettes/suits/SpiderBallGlow/fusion_varia.png", 1, false, false, sprite_get_xoffset(sSpiderballFXVaria_fusion), sprite_get_yoffset(sSpiderballFXVaria_fusion));
if (file_exists("mods/palettes/suits/SpiderBallGlow/fusion_gravity.png")) sprite_replace(sSpiderballFXGravity_fusion, "mods/palettes/suits/SpiderBallGlow/fusion_gravity.png", 1, false, false, sprite_get_xoffset(sSpiderballFXGravity_fusion), sprite_get_yoffset(sSpiderballFXGravity_fusion));

// Morph trail colors
var surf = -1,
    color = -1,
    col;
    
if (!surface_exists(surf)) {
    surf = surface_create(4, 4);
}

surface_set_target(surf);

if (file_exists("mods/palettes/suits/MorphTrailColors/power.png")) {
    color = sprite_add("mods/palettes/suits/MorphTrailColors/power.png", 1, false, false, 0, 0);
    draw_clear_alpha(c_black, 0);
    draw_sprite(color, 0, 0, 0);
    
    col = surface_getpixel_ext(surf, 0, 0);
    Trail_P_R = col & 255;
    Trail_P_G = (col >> 8) & 255;
    Trail_P_B = (col >> 16) & 255;
}

if (file_exists("mods/palettes/suits/MorphTrailColors/varia.png")) {
    color = sprite_add("mods/palettes/suits/MorphTrailColors/varia.png", 1, false, false, 0, 0);
    draw_clear_alpha(c_black, 0);
    draw_sprite(color, 0, 0, 0);
    
    col = surface_getpixel_ext(surf, 0, 0);
    Trail_V_R = col & 255;
    Trail_V_G = (col >> 8) & 255;
    Trail_V_B = (col >> 16) & 255;
}

if (file_exists("mods/palettes/suits/MorphTrailColors/gravity.png")) {
    color = sprite_add("mods/palettes/suits/MorphTrailColors/gravity.png", 1, false, false, 0, 0);
    draw_clear_alpha(c_black, 0);
    draw_sprite(color, 0, 0, 0);
    
    col = surface_getpixel_ext(surf, 0, 0);
    Trail_G_R = col & 255;
    Trail_G_G = (col >> 8) & 255;
    Trail_G_B = (col >> 16) & 255;
}

if (file_exists("mods/palettes/suits/MorphTrailColors/fusion_power.png")) {
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_power.png", 1, false, false, 0, 0);
    draw_clear_alpha(c_black, 0);
    draw_sprite(color, 0, 0, 0);
    
    col = surface_getpixel_ext(surf, 0, 0);
    Trail_P_R_F = col & 255;
    Trail_P_G_F = (col >> 8) & 255;
    Trail_P_B_F = (col >> 16) & 255;
}

if (file_exists("mods/palettes/suits/MorphTrailColors/fusion_varia.png")) {
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_varia.png", 1, false, false, 0, 0);
    draw_clear_alpha(c_black, 0);
    draw_sprite(color, 0, 0, 0);
    
    col = surface_getpixel_ext(surf, 0, 0);
    Trail_V_R_F = col & 255;
    Trail_V_G_F = (col >> 8) & 255;
    Trail_V_B_F = (col >> 16) & 255;
}

if (file_exists("mods/palettes/suits/MorphTrailColors/fusion_gravity.png")) {
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_gravity.png", 1, false, false, 0, 0);
    draw_clear_alpha(c_black, 0);
    draw_sprite(color, 0, 0, 0);
    
    col = surface_getpixel_ext(surf, 0, 0);
    Trail_G_R_F = col & 255;
    Trail_G_G_F = (col >> 8) & 255;
    Trail_G_B_F = (col >> 16) & 255;
}


draw_clear_alpha(c_black, 0);
draw_sprite(sMorphTrailPower_msr, 0, 0, 0);

col = surface_getpixel_ext(surf, 0, 0);
Trail_P_R_F_SR = col & 255;
Trail_P_G_F_SR = (col >> 8) & 255;
Trail_P_B_F_SR = (col >> 16) & 255;


draw_clear_alpha(c_black, 0);
draw_sprite(sMorphTrailVaria_msr, 0, 0, 0);

col = surface_getpixel_ext(surf, 0, 0);
Trail_V_R_F_SR = col & 255;
Trail_V_G_F_SR = (col >> 8) & 255;
Trail_V_B_F_SR = (col >> 16) & 255;


draw_clear_alpha(c_black, 0);
draw_sprite(sMorphTrailGravity_msr, 0, 0, 0);

col = surface_getpixel_ext(surf, 0, 0);
Trail_G_R_F_SR = col & 255;
Trail_G_G_F_SR = (col >> 8) & 255;
Trail_G_B_F_SR = (col >> 16) & 255;


surface_reset_target();
surface_free(surf);
sprite_delete(color);



// Monster palettes
ini_open("mods/palettes/monsters/config.ini");
MonsterPalettesFusionOnly = ini_read_real('PaletteMode', 'FusionOnly', 1);
ini_close();


if (file_exists("mods/palettes/monsters/alpha.png")) AlphaPalette = sprite_add("mods/palettes/monsters/alpha.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/monsters/gamma.png")) GammaPalette = sprite_add("mods/palettes/monsters/gamma.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/monsters/zeta.png")) ZetaPalette  = sprite_add("mods/palettes/monsters/zeta.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/monsters/omega.png")) OmegaPalette = sprite_add("mods/palettes/monsters/omega.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/monsters/queen.png")) QueenPalette = sprite_add("mods/palettes/monsters/queen.png", 1, false, false, 0, 0);
if (file_exists("mods/palettes/monsters/zeta_blur.png")) ZetaBlur = sprite_add("mods/palettes/monsters/zeta_blur.png", 1, false, false, sprite_get_xoffset(sMZetaBlur), sprite_get_yoffset(sMZetaBlur));
if (file_exists("mods/palettes/monsters/queen_dead.png")) QueenDead = background_add("mods/palettes/monsters/queen_dead.png", false, false);
if (file_exists("mods/palettes/monsters/queen_blood_drop.png")) QueenBloodDrop = sprite_add("mods/palettes/monsters/queen_blood_drop.png", sprite_get_number(sQueenBloodDrop), false, false, sprite_get_xoffset(sQueenBloodDrop), sprite_get_yoffset(sQueenBloodDrop));
if (file_exists("mods/palettes/monsters/queen_blood_particle.png")) QueenBloodParticle = sprite_add("mods/palettes/monsters/queen_blood_particle.png", sprite_get_number(sQueenBloodParticle), false, false, sprite_get_xoffset(sQueenBloodParticle), sprite_get_yoffset(sQueenBloodParticle));
