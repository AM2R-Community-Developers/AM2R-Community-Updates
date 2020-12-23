/// charge_beam_fire()
if (nofire == 0 && turning == 0 && morphing == 0 && unmorphing == 0 && walljumping == 0) {
    if (state == STANDING || state == RUNNING || state == DUCKING || state == JUMPING && vjump == 1 || state == GRABBEDQUEEN && image_index == 2) {
        nofire = 16;
        if (aimdirection == 0) shoot_beam(0);
        if (aimdirection == 1) shoot_beam(180);
        if (aimdirection == 2) shoot_beam(45);
        if (aimdirection == 3) shoot_beam(135);
        if (aimdirection == 4) shoot_beam(315);
        if (aimdirection == 5) shoot_beam(225);
        if (aimdirection == 6) shoot_beam(90);
        if (aimdirection == 7) shoot_beam(270);
    }
    if (state == GRIP && (facing == RIGHT && aimdirection != 0 || facing == LEFT && aimdirection != 1)) {
        nofire = 16;
        if (aimdirection == 0) shoot_beam(0);
        if (aimdirection == 1) shoot_beam(180);
        if (aimdirection == 2) shoot_beam(45);
        if (aimdirection == 3) shoot_beam(135);
        if (aimdirection == 4) shoot_beam(315);
        if (aimdirection == 5) shoot_beam(225);
        if (aimdirection == 6) shoot_beam(90);
        if (aimdirection == 7) shoot_beam(270);
    }
}
