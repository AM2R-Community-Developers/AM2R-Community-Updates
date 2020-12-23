/// SetAmb_Monsters()
if (global.opsoundfx) {
    snd[0] = sndMAlphaIntro;
    snd[1] = sndMAlphaHit;
    snd[2] = sndMAlphaSP;
    snd[3] = sndMAlphaDodge;
    snd[4] = sndMAlphaDeath;
    snd[5] = sndMGammaIntro;
    snd[6] = sndMGammaHit;
    snd[7] = sndMGammaSP;
    snd[8] = sndMGammaSP2;
    snd[9] = sndMGammaDodge;
    snd[10] = sndMGammaDeath;
    snd[11] = sndMGammaElec;
    snd[12] = sndMAlphaExpl;
    snd[13] = sndMGammaExpl;
    i = 0;
    repeat (14) {
        SetSoundAmb(snd[i], global.soundamb);
        i += 1;
    }
}
