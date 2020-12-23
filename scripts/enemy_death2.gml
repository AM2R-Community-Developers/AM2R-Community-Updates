/// enemy_death2()
expl = instance_create(x, y, oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
expl.sprite_index = sExpl1;
repeat (5) {
    expl = instance_create(x - 20 + random(40), y - 20 + random(40), oFXAnimSpark);
    expl.image_speed = 0.4 + random(0.4);
    expl.additive = 0;
    expl.sprite_index = sExpl1;
}
spawn_rnd_pickup(100);
PlaySoundMono(deathsound);
if (instance_exists(platform)) with (platform) instance_destroy();
global.kills += 1;

instance_destroy();
