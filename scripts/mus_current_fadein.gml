/// mus_current_fadein(sound)
if (!audio_is_playing(oMusicV2.currentbgm)) audio_play_sound(oMusicV2.currentbgm, 1, true);
audio_sound_gain(oMusicV2.currentbgm, 0, 0);
audio_sound_gain(oMusicV2.currentbgm, global.opmusicvolume / 100, 3000);
