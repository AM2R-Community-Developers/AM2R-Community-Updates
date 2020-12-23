/// mus_omega_monster()
mus_stop_all();
with (oMusicV2) alarm[4] = 60;
if (!sfx_isplaying(musMonsterAppear)) mus_play_once(musMonsterAppear);
