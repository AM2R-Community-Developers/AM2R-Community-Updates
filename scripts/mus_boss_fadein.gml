/// mus_current_fadein(sound)
if (!audio_is_playing(oMusicV2.bossbgm)) audio_play_sound(oMusicV2.bossbgm, 1, true);
audio_sound_gain(oMusicV2.bossbgm, 0, 0);
audio_sound_gain(oMusicV2.bossbgm, global.opmusicvolume / 100, 3000);
