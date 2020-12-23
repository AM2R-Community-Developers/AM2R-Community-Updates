/// PlayFootstep(material)
rnd = floor(random(3));
if (argument0 == 0) switch (rnd) {
    case 0: sfx_play(sndStepNormal0); break;
    case 1: sfx_play(sndStepNormal1); break;
    case 2: sfx_play(sndStepNormal2); break;
}
if (argument0 == 1) switch (rnd) {
    case 0: sfx_play(sndStepRock0); break;
    case 1: sfx_play(sndStepRock1); break;
    case 2: sfx_play(sndStepRock2); break;
}
if (argument0 == 2) switch (rnd) {
    case 0: sfx_play(sndStepGrass0); break;
    case 1: sfx_play(sndStepGrass1); break;
    case 2: sfx_play(sndStepGrass2); break;
}
if (argument0 == 3) switch (rnd) {
    case 0: sfx_play(sndStepStone0); break;
    case 1: sfx_play(sndStepStone1); break;
    case 2: sfx_play(sndStepStone2); break;
}
if (argument0 == 4) switch (rnd) {
    case 0: sfx_play(sndStepMetal0); break;
    case 1: sfx_play(sndStepMetal1); break;
    case 2: sfx_play(sndStepMetal2); break;
}
if (argument0 == 5) switch (rnd) {
    case 0: sfx_play(sndStepWet0); break;
    case 1: sfx_play(sndStepWet1); break;
    case 2: sfx_play(sndStepWet2); break;
}
