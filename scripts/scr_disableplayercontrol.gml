global.enablecontrol = 0;
with (oCharacter) {
    kLeft = 0;
    kRight = 0;
    kUp = 0;
    kDown = 0;
    kJump = 0;
    kJumpPressed = 0;
    kRun = 0;
    kAim = 0;
    kFire = 0;
    kMissile = 0;
    if (state == SUPERJUMP) {
        state = JUMPING;
        vjump = 1;
        xVel = 0;
        yVel = 0;
        sfx_stop(sndSJLoop);
    }
    //state = STANDING;
    
}
