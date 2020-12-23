/// chStepSpiderBall()
if (state == SPIDERBALL) {
    xVel = 0;
    yVel = 0;
    sbstate = 0;
    edgedl = position_meeting(x - 7, y + 1, oSolid);
    edgedr = position_meeting(x + 7, y + 1, oSolid);
    edgeul = position_meeting(x - 7, y - 15, oSolid);
    edgeur = position_meeting(x + 7, y - 15, oSolid);
    if (isCollisionBottom(0) == 1) y -= 1;
    if (isCollisionTop(0) == 1) y += 1;
    if (isCollisionLeft(0) == 1) x += 1;
    if (isCollisionRight(0) == 1) x -= 1;
    if ((isCollisionBottom(1) == 1 || isCollisionPlatformBottom(1) == 1) && isCollisionRight(1) == 0 && isCollisionLeft(1) == 0) sbstate = 1;
    if (isCollisionRight(1) == 1 && isCollisionBottom(1) == 0 && isCollisionTop(1) == 0) sbstate = 2;
    if (isCollisionTop(1) == 1 && isCollisionRight(1) == 0 && isCollisionLeft(1) == 0) sbstate = 3;
    if (isCollisionLeft(1) == 1 && isCollisionBottom(1) == 0 && isCollisionTop(1) == 0) sbstate = 4;
    if (isCollisionBottom(1) == 1 && isCollisionRight(1) == 1) sbstate = 5;
    if (isCollisionTop(1) == 1 && isCollisionRight(1) == 1) sbstate = 6;
    if (isCollisionTop(1) == 1 && isCollisionLeft(1) == 1) sbstate = 7;
    if (isCollisionBottom(1) == 1 && isCollisionLeft(1) == 1) sbstate = 8;
    if (isCollisionBottom(1) == 0 && isCollisionLeft(1) == 0 && isCollisionRight(1) == 0 && isCollisionTop(1) == 0) {
        if (edgedl == 1 && edgeul == 0 && edgeur == 0 && edgedr == 0) sbstate = 9;
        if (edgeul == 1 && edgedl == 0 && edgeur == 0 && edgedr == 0) sbstate = 10;
        if (edgeur == 1 && edgedl == 0 && edgeul == 0 && edgedr == 0) sbstate = 11;
        if (edgedr == 1 && edgedl == 0 && edgeul == 0 && edgeur == 0) sbstate = 12;
        if (edgedl == 1 && edgeul == 0 && edgeur == 0 && edgedr == 1) sbstate = 1;
        if (edgedl == 0 && edgeul == 0 && edgeur == 1 && edgedr == 1) sbstate = 2;
        if (edgedl == 0 && edgeul == 1 && edgeur == 1 && edgedr == 0) sbstate = 3;
        if (edgedl == 1 && edgeul == 1 && edgeur == 0 && edgedr == 0) sbstate = 4;
    }
    if (sbstate == 0) {
        state = AIRBALL;
        sball = 1;
    }
    if (kRight > 0 && sbmove == 0) {
        if (sbstate == 1) sbmove = 1;
        if (sbstate == 3) sbmove = -1;
        if (sbstate == 5) sbmove = 1;
        if (sbstate == 6) sbmove = -1;
        if (sbstate == 7) sbmove = -1;
        if (sbstate == 8) sbmove = 1;
        if (sbstate == 9) sbmove = 1;
        if (sbstate == 10) sbmove = -1;
        if (sbstate == 11) sbmove = -1;
        if (sbstate == 12) sbmove = 1;
    }
    if (kLeft > 0 && sbmove == 0) {
        if (sbstate == 1) sbmove = -1;
        if (sbstate == 3) sbmove = 1;
        if (sbstate == 5) sbmove = -1;
        if (sbstate == 6) sbmove = 1;
        if (sbstate == 7) sbmove = 1;
        if (sbstate == 8) sbmove = -1;
        if (sbstate == 9) sbmove = -1;
        if (sbstate == 10) sbmove = 1;
        if (sbstate == 11) sbmove = 1;
        if (sbstate == 12) sbmove = -1;
    }
    if (kUp > 0 && sbmove == 0) {
        if (sbstate == 2) sbmove = 1;
        if (sbstate == 4) sbmove = -1;
        if (sbstate == 5) sbmove = 1;
        if (sbstate == 6) sbmove = 1;
        if (sbstate == 7) sbmove = -1;
        if (sbstate == 8) sbmove = -1;
        if (sbstate == 9) sbmove = -1;
        if (sbstate == 10) sbmove = -1;
        if (sbstate == 11) sbmove = 1;
        if (sbstate == 12) sbmove = 1;
    }
    if (kDown > 0 && sbmove == 0) {
        if (sbstate == 2) sbmove = -1;
        if (sbstate == 4) sbmove = 1;
        if (sbstate == 5) sbmove = -1;
        if (sbstate == 6) sbmove = -1;
        if (sbstate == 7) sbmove = 1;
        if (sbstate == 8) sbmove = 1;
        if (sbstate == 9) sbmove = 1;
        if (sbstate == 10) sbmove = 1;
        if (sbstate == 11) sbmove = -1;
        if (sbstate == 12) sbmove = -1;
    }
    if (kRight == 0 && kLeft == 0 && kUp == 0 && kDown == 0) sbmove = 0;
    if (sbstate == 1) x += sbmove;
    if (sbstate == 2) y -= sbmove;
    if (sbstate == 3) x -= sbmove;
    if (sbstate == 4) y += sbmove;
    if (sbstate == 5) {
        if (sbmove == 1) y -= 1;
        if (sbmove == -1) x -= 1;
    }
    if (sbstate == 6) {
        if (sbmove == 1) x -= 1;
        if (sbmove == -1) y += 1;
    }
    if (sbstate == 7) {
        if (sbmove == 1) y += 1;
        if (sbmove == -1) x += 1;
    }
    if (sbstate == 8) {
        if (sbmove == 1) x += 1;
        if (sbmove == -1) y -= 1;
    }
    if (sbstate == 9) {
        if (sbmove == 1) y += 1;
        if (sbmove == -1) x -= 1;
    }
    if (sbstate == 10) {
        if (sbmove == 1) x -= 1;
        if (sbmove == -1) y -= 1;
    }
    if (sbstate == 11) {
        if (sbmove == 1) y -= 1;
        if (sbmove == -1) x += 1;
    }
    if (sbstate == 12) {
        if (sbmove == 1) x += 1;
        if (sbmove == -1) y += 1;
    }
} // if (state == SPIDERBALL)
if (state == AIRBALL && sball == 1) {
    if (isCollisionTop(1) == 1 || isCollisionBottom(1) == 1 || isCollisionRight(1) == 1 || isCollisionLeft(1) == 1) state = SPIDERBALL;
}
