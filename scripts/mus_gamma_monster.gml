/// mus_gamma_monster()
mus_stop_all();
with (oMusicV2) alarm[2] = 60;
mus_stop(musMonsterAppear);
mus_play_once(musMonsterAppear);
