/// cdStepSpiderBallOld()
// As the name suggests, not used.
if (state == SPIDERBALL) {
    xVel = 0;
    yVel = 0;
    if (kRight || kLeft || kUp || kDown) {
        if (sbdir == 1) {
            if (isCollisionRight(1) == 0) x += 1;
        }
        if (sbdir == 2) {
            if (isCollisionLeft(1) == 0) x -= 1;
        }
        if (sbdir == 3) {
            if (isCollisionTop(1) == 0) y -= 1;
        }
        if (sbdir == 4) {
            if (isCollisionBottom(1) == 0) y += 1;
        }
    } else sbdir = 0;
    edgedl = position_meeting(x - 7, y + 1, oSolid);
    edgedr = position_meeting(x + 7, y + 1, oSolid);
    edgeul = position_meeting(x - 7, y - 15, oSolid);
    edgeur = position_meeting(x + 7, y - 15, oSolid);
    if (isCollisionTop(1) == 1) {
        if (isCollisionRight(1) == 1 && sbdir == 1 || isCollisionLeft(1) == 1 && sbdir == 2) {
            if (sbdir == 1 && position_meeting(x + 7, y - 12, oSolid) == false) {
                y += 1;
                x += 1;
            } else if (sbdir == 2 && position_meeting(x - 7, y - 12, oSolid) == false) {
                y += 1;
                x -= 1;
            } else {
                sbdir = 4;
                y += 1;
            }
        }
        if (kRight && kRightPushedSteps == 0) sbdir = 1;
        if (kLeft && kLeftPushedSteps == 0) sbdir = 2;
    }
    if (isCollisionBottom(1) == 1) {
        if (isCollisionRight(1) == 1 && sbdir == 1 || isCollisionLeft(1) == 1 && sbdir == 2) {
            if (sbdir == 1 && position_meeting(x + 7, y - 3, oSolid) == false) {
                y -= 1;
                x += 1;
            } else if (sbdir == 2 && position_meeting(x - 7, y - 3, oSolid) == false) {
                y -= 1;
                x -= 1;
            } else {
                sbdir = 3;
                y -= 1;
            }
        }
        if (kRight && kRightPushedSteps == 0) sbdir = 1;
        if (kLeft && kLeftPushedSteps == 0) sbdir = 2;
    }
    if (isCollisionRight(1) == 1) {
        if (isCollisionTop(1) == 1 && sbdir == 3 || isCollisionBottom(1) == 1 && sbdir == 4) {
            if (sbdir == 3 && position_meeting(x + 4, y - 15, oSolid) == false) {
                y -= 1;
                x -= 1;
            } else if (sbdir == 4 && position_meeting(x + 4, y, oSolid) == false) {
                y += 1;
                x -= 1;
            } else {
                sbdir = 2;
                x -= 1;
            }
        }
        if (kUp && kUpPushedSteps == 0) sbdir = 3;
        if (kDown && kDownPushedSteps == 0) sbdir = 4;
    }
    if (isCollisionLeft(1) == 1) {
        if (isCollisionTop(1) == 1 && sbdir == 3 || isCollisionBottom(1) == 1 && sbdir == 4) {
            if (sbdir == 3 && position_meeting(x - 5, y - 15, oSolid) == false) {
                y -= 1;
                x += 1;
            } else if (sbdir == 4 && position_meeting(x - 5, y, oSolid) == false) {
                y += 1;
                x += 1;
            } else {
                sbdir = 1;
                x += 1;
            }
        }
        if (kDown && kDownPushedSteps == 0) sbdir = 4;
        if (kUp && kUpPushedSteps == 0) sbdir = 3;
    }
    if (isCollisionTop(1) == 0 && isCollisionBottom(1) == 0 && isCollisionRight(1) == 0 && isCollisionLeft(1) == 0) {
        if (edgedr) {
            if (sbdir == 3) {
                sbdir = 1;
                if (isCollisionRight(1) == 0) x += 1;
            }
            if (sbdir == 2) {
                sbdir = 4;
                if (isCollisionBottom(1) == 0) y += 1;
            }
        }
        if (edgedl) {
            if (sbdir == 1) {
                sbdir = 4;
                if (isCollisionBottom(1) == 0) y += 1;
            }
            if (sbdir == 3) {
                sbdir = 2;
                if (isCollisionLeft(1) == 0) x -= 1;
            }
        }
        if (edgeur) {
            if (sbdir == 4) {
                sbdir = 1;
                if (isCollisionRight(1) == 0) x += 1;
            }
            if (sbdir == 2) {
                sbdir = 3;
                if (isCollisionTop(1) == 0) y -= 1;
            }
        }
        if (edgeul) {
            if (sbdir == 1) {
                sbdir = 3;
                if (isCollisionTop(1) == 0) y -= 1;
            }
            if (sbdir == 4) {
                sbdir = 2;
                if (isCollisionLeft(1) == 0) x -= 1;
            }
        }
        if (edgeur == 0 && edgeul == 0 && edgedr == 0 && edgedl == 0) {
            state = AIRBALL;
            sball = 1;
        }
    } // if (isCollisionTop(1) == 0 && isCollisionBottom(1) == 0 && isCollisionRight(1) == 0 && isCollisionLeft(1) == 0)
    if (kRight || kLeft || kUp || kDown) {
        if (position_meeting(x - 6, y + 1, oSlope) == true || position_meeting(x + 6, y + 1, oSlope) == true) {
            if (sbdir == 1 && x - xprevious > 1) x -= 1;
            if (sbdir == 2 && x - xprevious < -1) x += 1;
            if (isCollisionBottom(1) == 0) y += 1;
        }
        if (position_meeting(x - 6, y - 15, oSlope) == true || position_meeting(x + 6, y - 15, oSlope) == true) {
            if (sbdir == 1 && x - xprevious > 1) x -= 1;
            if (sbdir == 2 && x - xprevious < -1) x += 1;
            if (isCollisionTop(1) == 0) y -= 1;
        }
    }
} // if (state == SPIDERBALL)
if (state == AIRBALL && sball == 1) {
    if (isCollisionTop(1) == 1 || isCollisionBottom(1) == 1 || isCollisionRight(1) == 1 || isCollisionLeft(1) == 1) state = SPIDERBALL;
}
