/// SetSpinJumpSound()
if (global.spacejump == 0 && global.screwattack == 0) spinjump_sound = sndSpinJump;
if (global.spacejump == 1 && global.screwattack == 0) spinjump_sound = sndSpaceJump;
if (global.spacejump == 0 && global.screwattack == 1) spinjump_sound = sndScrewAttack;
if (global.spacejump == 1 && global.screwattack == 1) spinjump_sound = sndSpaceScrewAttack;
if (inwater && global.currentsuit < 2) spinjump_sound = sndSpinJumpWater;
