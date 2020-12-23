/// mus_stop_non_current()
if (audio_is_playing(musTitle) && currentbgm != musTitle) audio_stop_sound(musTitle);
if (audio_is_playing(musMainCave) && currentbgm != musMainCave) audio_stop_sound(musMainCave);
if (audio_is_playing(musMonsterAppear) && currentbgm != musMonsterAppear) audio_stop_sound(musMonsterAppear);
if (audio_is_playing(musAlphaFight) && currentbgm != musAlphaFight) audio_stop_sound(musAlphaFight);
if (audio_is_playing(musCaveAmbience) && currentbgm != musCaveAmbience) audio_stop_sound(musCaveAmbience);
if (audio_is_playing(musArea1A) && currentbgm != musArea1A) audio_stop_sound(musArea1A);
if (audio_is_playing(musArea1B) && currentbgm != musArea1B) audio_stop_sound(musArea1B);
if (audio_is_playing(musTester) && currentbgm != musTester) audio_stop_sound(musTester);
if (audio_is_playing(musAncientGuardian) && currentbgm != musAncientGuardian) audio_stop_sound(musAncientGuardian);
if (audio_is_playing(musArea2A) && currentbgm != musArea2A) audio_stop_sound(musArea2A);
if (audio_is_playing(musArea2B) && currentbgm != musArea2B) audio_stop_sound(musArea2B);
if (audio_is_playing(musArachnus) && currentbgm != musArachnus) audio_stop_sound(musArachnus);
if (audio_is_playing(musArea3A) && currentbgm != musArea3A) audio_stop_sound(musArea3A);
if (audio_is_playing(musArea3B) && currentbgm != musArea3B) audio_stop_sound(musArea3B);
if (audio_is_playing(musTorizoA) && currentbgm != musTorizoA) audio_stop_sound(musTorizoA);
if (audio_is_playing(musTorizoB) && currentbgm != musTorizoB) audio_stop_sound(musTorizoB);
if (audio_is_playing(musGammaFight) && currentbgm != musGammaFight) audio_stop_sound(musGammaFight);
if (audio_is_playing(musMainCave2) && currentbgm != musMainCave2) audio_stop_sound(musMainCave2);
if (audio_is_playing(musLabAmbience) && currentbgm != musLabAmbience) audio_stop_sound(musLabAmbience);
if (audio_is_playing(musCaveAmbienceA4) && currentbgm != musCaveAmbienceA4) audio_stop_sound(musCaveAmbienceA4);
if (audio_is_playing(musArea4A) && currentbgm != musArea4A) audio_stop_sound(musArea4A);
if (audio_is_playing(musArea4B) && currentbgm != musArea4B) audio_stop_sound(musArea4B);
if (audio_is_playing(musReactor) && currentbgm != musReactor) audio_stop_sound(musReactor);
if (audio_is_playing(musZetaFight) && currentbgm != musZetaFight) audio_stop_sound(musZetaFight);
if (audio_is_playing(musArea5A) && currentbgm != musArea5A) audio_stop_sound(musArea5A);
if (audio_is_playing(musArea5B) && currentbgm != musArea5B) audio_stop_sound(musArea5B);
if (audio_is_playing(musEris) && currentbgm != musEris) audio_stop_sound(musEris);
if (audio_is_playing(musItemAmb) && currentbgm != musItemAmb) audio_stop_sound(musItemAmb);
if (file_exists("musItemAmb2.ogg")) {
    if (audio_is_playing(musItemAmb2) && currentbgm != musItemAmb2) audio_stop_sound(musItemAmb2);
}
