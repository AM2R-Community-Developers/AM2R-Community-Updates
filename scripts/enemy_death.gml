/// enemy_death()
spawn_rnd_pickup(100);
expl = instance_create(x, y, oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
expl.sprite_index = sExpl1;
PlaySoundMono(deathsound);
if (instance_exists(platform)) with (platform) instance_destroy();
global.kills += 1;


instance_destroy();
