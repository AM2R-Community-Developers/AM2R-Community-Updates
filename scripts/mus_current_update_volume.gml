/// mus_current_update_volume()
if (oMusicV2.bossbgm == sndJump && audio_is_playing(oMusicV2.currentbgm)) audio_sound_gain(oMusicV2.currentbgm, global.opmusicvolume / 100, 0);
if (oMusicV2.bossbgm != sndJump && audio_is_playing(oMusicV2.bossbgm)) audio_sound_gain(oMusicV2.bossbgm, global.opmusicvolume / 100, 0);
