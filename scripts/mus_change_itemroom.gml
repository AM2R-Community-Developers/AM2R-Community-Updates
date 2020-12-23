if (file_exists("musItemAmb2.ogg")) {
    audio_sound_gain(oMusicV2.currentbgm, 0, 250);
    oMusicV2.alarm[8] = 15;
    oMusicV2.previousbgm = oMusicV2.currentbgm;
    oMusicV2.currentbgm = musItemAmb2;
    if (!audio_is_playing(oMusicV2.currentbgm)) audio_play_sound(oMusicV2.currentbgm, 1, true);
    audio_sound_gain(oMusicV2.currentbgm, 0, 0);
    audio_sound_gain(oMusicV2.currentbgm, global.opmusicvolume / 100, 250);
}
