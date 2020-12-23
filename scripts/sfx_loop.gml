/// sfx_loop(sound)
var sid;
sid = audio_play_sound(argument0, 1, true);
audio_sound_gain(argument0, global.opsoundvolume / 100, 0);
return sid;
