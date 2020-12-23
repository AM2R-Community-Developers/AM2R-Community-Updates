var choice = choose(sndSeptogg1, sndSeptogg2, sndSeptogg3);

if(choice == global.lastSeptoggSound) {
    play_septogg_sound();
} 
else {
    sfx_play(choice);
    global.lastSeptoggSound = choice;
}
