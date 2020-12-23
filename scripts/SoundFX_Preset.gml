/// SoundFX_Preset(ambient_id)
if (global.soundamb != argument0) {
    global.soundamb = argument0;
    SetAmb_Player();
    SetAmb_Weapons();
    SetAmb_Enemies();
}
