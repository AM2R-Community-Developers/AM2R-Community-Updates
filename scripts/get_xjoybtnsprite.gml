if (oControl.mod_buttonsconfig == 1) {
    /// Playstation Controller
    if (argument0 == gp_face1) return PSsXJoyBtnA;
    if (argument0 == gp_face2) return PSsXJoyBtnB;
    if (argument0 == gp_face3) return PSsXJoyBtnX;
    if (argument0 == gp_face4) return PSsXJoyBtnY;
    if (argument0 == gp_shoulderl) return PSsXJoyBtnLB;
    if (argument0 == gp_shoulderr) return PSsXJoyBtnRB;
    if (argument0 == gp_shoulderlb) return PSsXJoyBtnLT;
    if (argument0 == gp_shoulderrb) return PSsXJoyBtnRT;
    if (argument0 == gp_stickl) return sXJoyBtnLth;
    if (argument0 == gp_stickr) return sXJoyBtnRth;
    if (argument0 == gp_start) return PSsXJoyBtnStart;
    if (argument0 == gp_select) return PSsXJoyBtnBack;
}
else if (oControl.mod_buttonsconfig == 2) {
    /// WiiU Controller
    if (argument0 == gp_face1) return WiiUsXJoyBtnB;
    if (argument0 == gp_face2) return WiiUsXJoyBtnA;
    if (argument0 == gp_face3) return WiiUsXJoyBtnY;
    if (argument0 == gp_face4) return WiiUsXJoyBtnX;
    if (argument0 == gp_shoulderl) return sXJoyBtnLB;
    if (argument0 == gp_shoulderr) return sXJoyBtnRB;
    if (argument0 == gp_shoulderlb) return sXJoyBtnLT;
    if (argument0 == gp_shoulderrb) return sXJoyBtnRT;
    if (argument0 == gp_stickl) return sXJoyBtnLth;
    if (argument0 == gp_stickr) return sXJoyBtnRth;
    if (argument0 == gp_start) return sXJoyBtnStart;
    if (argument0 == gp_select) return sXJoyBtnBack;
}
else if (oControl.mod_buttonsconfig == 3) {
    /// SNES controller
    if (argument0 == gp_face1) return SNESsXJoyBtnB;
    if (argument0 == gp_face2) return SNESsXJoyBtnA;
    if (argument0 == gp_face3) return SNESsXJoyBtnY;
    if (argument0 == gp_face4) return SNESsXJoyBtnX;
    if (argument0 == gp_shoulderl) return sXJoyBtnLB;
    if (argument0 == gp_shoulderr) return sXJoyBtnRB;
    if (argument0 == gp_shoulderlb) return sXJoyBtnLT;
    if (argument0 == gp_shoulderrb) return sXJoyBtnRT;
    if (argument0 == gp_stickl) return sXJoyBtnLth;
    if (argument0 == gp_stickr) return sXJoyBtnRth;
    if (argument0 == gp_start) return sXJoyBtnStart;
    if (argument0 == gp_select) return sXJoyBtnBack;
}
else if (oControl.mod_buttonsconfig == 4) {
    /// MOGA controller
    if (argument0 == gp_face1) return sMogaBtnA;
    if (argument0 == gp_face2) return sMogaBtnB;
    if (argument0 == gp_face3) return sMogaBtnX;
    if (argument0 == gp_face4) return sMogaBtnY;
    if (argument0 == gp_shoulderl) return sXJoyBtnLB;
    if (argument0 == gp_shoulderr) return sXJoyBtnRB;
    if (argument0 == gp_shoulderlb) return sXJoyBtnLT;
    if (argument0 == gp_shoulderrb) return sXJoyBtnRT;
    if (argument0 == gp_stickl) return sXJoyBtnLth;
    if (argument0 == gp_stickr) return sXJoyBtnRth;
    if (argument0 == gp_start) return sXJoyBtnStart;
    if (argument0 == gp_select) return sXJoyBtnBack;
}
else if (oControl.mod_buttonsconfig == 5) {
    /// OUYA controller
    if (argument0 == gp_face1) return sOuyaBtnO;
    if (argument0 == gp_face3) return sOuyaBtnU;
    if (argument0 == gp_face4) return sOuyaBtnY;
    if (argument0 == gp_face2) return sOuyaBtnA;
    if (argument0 == gp_shoulderl) return sXJoyBtnLB;
    if (argument0 == gp_shoulderr) return sXJoyBtnRB;
    if (argument0 == gp_shoulderlb) return sXJoyBtnLT;
    if (argument0 == gp_shoulderrb) return sXJoyBtnRT;
    if (argument0 == gp_stickl) return sXJoyBtnLth;
    if (argument0 == gp_stickr) return sXJoyBtnRth;
    if (argument0 == gp_start) return sXJoyBtnStart;
    if (argument0 == gp_select) return sXJoyBtnBack;
}
else {
    /// Xbox Controller
    if (argument0 == gp_face1) return sXJoyBtnA;
    if (argument0 == gp_face2) return sXJoyBtnB;
    if (argument0 == gp_face3) return sXJoyBtnX;
    if (argument0 == gp_face4) return sXJoyBtnY;
    if (argument0 == gp_shoulderl) return sXJoyBtnLB;
    if (argument0 == gp_shoulderr) return sXJoyBtnRB;
    if (argument0 == gp_shoulderlb) return sXJoyBtnLT;
    if (argument0 == gp_shoulderrb) return sXJoyBtnRT;
    if (argument0 == gp_stickl) return sXJoyBtnLth;
    if (argument0 == gp_stickr) return sXJoyBtnRth;
    if (argument0 == gp_start) return sXJoyBtnStart;
    if (argument0 == gp_select) return sXJoyBtnBack;
}
