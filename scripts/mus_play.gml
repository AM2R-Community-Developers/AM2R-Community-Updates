/// mus_play(sound)
if (!audio_is_playing(argument0)) {
    audio_play_sound(argument0, 1, true);
    audio_sound_gain(argument0, global.opmusicvolume / 100, 0);
}
