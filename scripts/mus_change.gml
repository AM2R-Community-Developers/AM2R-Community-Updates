/// mus_change(sound)
if (oMusicV2.currentbgm != argument0) {
    oMusicV2.previousbgm = oMusicV2.currentbgm;
    oMusicV2.currentbgm = argument0;
    if (audio_is_playing(oMusicV2.previousbgm)) audio_sound_gain(oMusicV2.previousbgm, 0, 3000);
    if (!audio_is_playing(oMusicV2.currentbgm)) audio_play_sound(oMusicV2.currentbgm, 1, true);
    audio_sound_gain(oMusicV2.currentbgm, 0, 0);
    audio_sound_gain(oMusicV2.currentbgm, global.opmusicvolume / 100, 3000);
    if (file_exists("musItemAmb2.ogg")) {
        if(oMusicV2.previousbgm == musItemAmb2) mus_resume(oMusicV2.currentbgm);
    }
}
