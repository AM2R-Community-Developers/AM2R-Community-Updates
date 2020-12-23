/// ResetAmb_Weapons()
snd[0] = sndFireBeam;
snd[1] = sndFireBeamC;
snd[2] = sndFireBeamI;
snd[3] = sndFireBeamCI;
snd[4] = sndFireBeamW;
snd[5] = sndFireBeamCW;
snd[6] = sndFireBeamS;
snd[7] = sndFireBeamCS;
snd[8] = sndFireBeamSI;
snd[9] = sndFireBeamCSI;
snd[10] = sndFireBeamSW;
snd[11] = sndFireBeamCSW;
i = 0;
repeat (12) {
    SetSoundAmb(snd[i], 0);
    i += 1;
}
