/// global_control()
kLeftReleased = 0;
if (kLeft > 0) {
    kLeft = ctrl_Left;
    kLeftPushedSteps += 1;
    kLeftPressed = 0;
    if (kLeft == 0) kLeftReleased = 1;
} else {
    kLeft = ctrl_Left;
    if (kLeft) kLeftPressed = 1;
    kLeftPushedSteps = 0;
}
kRightReleased = 0;
if (kRight > 0) {
    kRight = ctrl_Right;
    kRightPushedSteps += 1;
    kRightPressed = 0;
    if (kRight == 0) kRightReleased = 1;
} else {
    kRight = ctrl_Right;
    if (kRight) kRightPressed = 1;
    kRightPushedSteps = 0;
}
kUpReleased = 0;
if (kUp) {
    kUp = ctrl_Up;
    kUpPushedSteps += 1;
    kUpPressed = 0;
    if (kUp == 0) kUpReleased = 1;
} else {
    kUp = ctrl_Up;
    if (kUp) kUpPressed = 1;
    kUpPushedSteps = 0;
}
kDownReleased = 0;
if (kDown) {
    kDown = ctrl_Down;
    kDownPushedSteps += 1;
    kDownPressed = 0;
    if (kDown == 0) kDownReleased = 1;
} else {
    kDown = ctrl_Down;
    if (kDown) kDownPressed = 1;
    kDownPushedSteps = 0;
}
if (kJump) {
    kJump = ctrl_A;
    kJumpPushedSteps += 1;
    kJumpPressed = 0;
} else {
    kJump = ctrl_A;
    if (kJump) kJumpPressed = 1;
    kJumpPushedSteps = 0;
}
if (kFire) {
    kFire = ctrl_B;
    kFirePushedSteps += 1;
    kFirePressed = 0;
} else {
    kFire = ctrl_B;
    if (kFire) kFirePressed = 1;
    kFirePushedSteps = 0;
}
if (kMissile) {
    kMissile = ctrl_R;
    kMissilePushedSteps += 1;
    kMissilePressed = 0;
} else {
    kMissile = ctrl_R;
    if (kMissile) kMissilePressed = 1;
    kMissilePushedSteps = 0;
}
if (kAim) {
    kAim = ctrl_L;
    kAimPushedSteps += 1;
    kAimPressed = 0;
} else {
    kAim = ctrl_L;
    if (kAim) kAimPressed = 1;
    kAimPushedSteps = 0;
}
if (kAim2) {
    kAim2 = ctrl_L2;
    kAim2PushedSteps += 1;
    kAim2Pressed = 0;
} else {
    kAim2 = ctrl_L2;
    if (kAim2) kAim2Pressed = 1;
    kAim2PushedSteps = 0;
}
if (kSelect) {
    kSelect = ctrl_Select;
    kSelectPushedSteps += 1;
    kSelectPressed = 0;
} else {
    kSelect = ctrl_Select;
    if (kSelect) kSelectPressed = 1;
    kSelectPushedSteps = 0;
}
if (kStart) {
    kStart = ctrl_Start;
    kStartPushedSteps += 1;
    kStartPressed = 0;
} else {
    kStart = ctrl_Start;
    if (kStart) kStartPressed = 1;
    kStartPushedSteps = 0;
}
if (kWalk) {
    kWalk = ctrl_R2;
    kWalkPushedSteps += 1;
    kWalkPressed = 0;
} else {
    kWalk = ctrl_R2;
    if (kWalk) kWalkPressed = 1;
    kWalkPushedSteps = 0;
}
if (kMorph) {
    kMorph = ctrl_X;
    kMorphPushedSteps += 1;
    kMorphPressed = 0;
} else {
    kMorph = ctrl_X;
    if (kMorph) kMorphPressed = 1;
    kMorphPushedSteps = 0;
}
if (kMenu1) {
    kMenu1 = ctrl_Menu1;
    kMenu1PushedSteps += 1;
    kMenu1Pressed = 0;
} else {
    kMenu1 = ctrl_Menu1;
    if (kMenu1) kMenu1Pressed = 1;
    kMenu1PushedSteps = 0;
}
if (kMenu2) {
    kMenu2 = ctrl_Menu2;
    kMenu2PushedSteps += 1;
    kMenu2Pressed = 0;
} else {
    kMenu2 = ctrl_Menu2;
    if (kMenu2) kMenu2Pressed = 1;
    kMenu2PushedSteps = 0;
}
kExit = ctrl_Exit;
