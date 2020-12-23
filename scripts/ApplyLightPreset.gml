/// ApplyLightPreset()
if (!instance_exists(oLightEngine)) {
    if (global.darkness == 1) {
        le = instance_create(0, 0, oLightEngine);
        le.image_alpha = 0.5;
        instance_create(oCharacter.x, oCharacter.y - 16, oFlashlight64);
    }
    if (global.darkness == 2) {
        le = instance_create(0, 0, oLightEngine);
        le.image_alpha = 0.8;
        instance_create(oCharacter.x, oCharacter.y - 16, oFlashlight64);
    }
    if (global.darkness == 3) {
        le = instance_create(0, 0, oLightEngine);
        le.image_alpha = 0.9;
        instance_create(oCharacter.x, oCharacter.y - 16, oFlashlight64);
    }
    if (global.darkness == 4) {
        le = instance_create(0, 0, oLightEngine);
        le.image_alpha = 1;
        instance_create(oCharacter.x, oCharacter.y - 16, oFlashlight64);
    }
}
