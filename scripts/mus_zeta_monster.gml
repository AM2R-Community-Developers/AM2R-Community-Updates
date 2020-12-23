/// mus_zeta_monster()
mus_stop_all();
with (oMusicV2) alarm[3] = 60;
if (!sfx_isplaying(musMonsterAppear)) mus_play_once(musMonsterAppear);
