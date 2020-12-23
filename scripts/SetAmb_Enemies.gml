/// SetAmb_Enemies()
if (global.opsoundfx) {
    snd[0] = sndEDeath1;
    snd[1] = sndEHit1;
    snd[2] = sndEHit2;
    snd[3] = sndEHit3;
    snd[4] = sndEHit4;
    snd[5] = sndEHit5;
    snd[6] = sndEHit6;
    snd[7] = sndEHit7;
    snd[8] = sndAutrackFire;
    snd[9] = sndFireball;
    snd[10] = sndEDeath2;
    snd[11] = sndDebris1;
    snd[12] = sndDebris2;
    snd[13] = sndDebris3;
    snd[14] = sndRobotHit1;
    snd[15] = sndRobotHit2;
    snd[16] = sndRobotHit3;
    snd[17] = sndRobotHit4;
    snd[18] = sndRobotExpl;
    snd[19] = sndAutoadJump;
    snd[20] = sndFreezeHit;
    i = 0;
    repeat (21) {
        SetSoundAmb(snd[i], global.soundamb);
        i += 1;
    }
} // if (global.opsoundfx)
