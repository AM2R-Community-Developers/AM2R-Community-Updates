/// draw_gui()
/*if (global.classicmode == 0 && global.opshowhud) {
xoff = 33;
if (global.etanks == 0) draw_background(bgGUIHealth, 0, 0);
if (global.etanks == 1 || global.etanks == 2) {
draw_background(bgGUIHealth1, 0, 0);
xoff = 42;
}
if (global.etanks == 3 || global.etanks == 4) {
draw_background(bgGUIHealth2, 0, 0);
xoff = 48;
}
if (global.etanks == 5 || global.etanks == 6) {
draw_background(bgGUIHealth3, 0, 0);
xoff = 54;
}
if (global.etanks == 7 || global.etanks == 8) {
draw_background(bgGUIHealth4, 0, 0);
xoff = 60;
}
if (global.etanks == 9 || global.etanks == 10) {
draw_background(bgGUIHealth5, 0, 0);
xoff = 66;
}
if (global.etanks == 11 || global.etanks == 12) {
draw_background(bgGUIHealth6, 0, 0);
xoff = 75;
}
if (global.etanks == 13 || global.etanks == 14) {
draw_background(bgGUIHealth7, 0, 0);
xoff = 81;
}
if (global.etanks == 15 || global.etanks == 16) {
draw_background(bgGUIHealth8, 0, 0);
xoff = 87;
}
if (global.etanks == 17 || global.etanks == 18) {
draw_background(bgGUIHealth9, 0, 0);
xoff = 93;
}
if (global.etanks == 19 || global.etanks == 20) {
draw_background(bgGUIHealth10, 0, 0);
xoff = 99;
}
if (global.etanks == 21 || global.etanks == 22) {
draw_background(bgGUIHealth11, 0, 0);
xoff = 108;
}
if (global.etanks == 23 || global.etanks == 24) {
draw_background(bgGUIHealth12, 0, 0);
xoff = 114;
}
if (global.etanks == 25 || global.etanks == 26) {
draw_background(bgGUIHealth13, 0, 0);
xoff = 120;
}
if (global.etanks == 27 || global.etanks == 28) {
draw_background(bgGUIHealth14, 0, 0);
xoff = 126;
}
if (global.etanks == 29 || global.etanks >= 30) {
draw_background(bgGUIHealth15, 0, 0);
xoff = 132;
}
draw_set_font(guifont1);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(4, 4, gui_health());
if (hudflash) {
draw_set_font(guifont1a);
draw_text_color(4, 4, gui_health(), c_white, c_white, c_white, c_white, hudflashfx / 4);
}
etankxoff = 32;
if (global.etanks >= 1) {
if (global.playerhealth > 99) draw_sprite(sGUIETank, 1, 0 + etankxoff, 4);
if (global.playerhealth <= 99) draw_sprite(sGUIETank, 0, 0 + etankxoff, 4);
}
if (global.etanks >= 2) {
if (global.playerhealth > 199) draw_sprite(sGUIETank, 1, 0 + etankxoff, 10);
if (global.playerhealth <= 199) draw_sprite(sGUIETank, 0, 0 + etankxoff, 10);
}
if (global.etanks >= 3) {
if (global.playerhealth > 299) draw_sprite(sGUIETank, 1, 0 + etankxoff + 6, 4);
if (global.playerhealth <= 299) draw_sprite(sGUIETank, 0, 0 + etankxoff + 6, 4);
}
if (global.etanks >= 4) {
if (global.playerhealth > 399) draw_sprite(sGUIETank, 1, 0 + etankxoff + 6, 10);
if (global.playerhealth <= 399) draw_sprite(sGUIETank, 0, 0 + etankxoff + 6, 10);
}
if (global.etanks >= 5) {
if (global.playerhealth > 499) draw_sprite(sGUIETank, 1, 0 + etankxoff + 12, 4);
if (global.playerhealth <= 499) draw_sprite(sGUIETank, 0, 0 + etankxoff + 12, 4);
}
if (global.etanks >= 6) {
if (global.playerhealth > 599) draw_sprite(sGUIETank, 1, 0 + etankxoff + 12, 10);
if (global.playerhealth <= 599) draw_sprite(sGUIETank, 0, 0 + etankxoff + 12, 10);
}
/*
if (global.etanks >= 7) {
if (global.playerhealth > 699) draw_sprite(sGUIETank, 1, 0 + etankxoff + 18, 4);
if (global.playerhealth <= 699) draw_sprite(sGUIETank, 0, 0 + etankxoff + 18, 4);
}
*/

/*if (global.etanks >= 7) {
if (global.playerhealth > 99 + (6 * (100 * oControl.mod_etankhealthmult))) draw_sprite(sGUIETank, 1, 0 + etankxoff + 18, 4);
if (global.playerhealth <= 99 + (6 * (100 * oControl.mod_etankhealthmult))) draw_sprite(sGUIETank, 0, 0 + etankxoff + 18, 4);
}

if (global.etanks >= 8) {
if (global.playerhealth > 799) draw_sprite(sGUIETank, 1, 0 + etankxoff + 18, 10);
if (global.playerhealth <= 799) draw_sprite(sGUIETank, 0, 0 + etankxoff + 18, 10);
}
if (global.etanks >= 9) {
if (global.playerhealth > 899) draw_sprite(sGUIETank, 1, 0 + etankxoff + 24, 4);
if (global.playerhealth <= 899) draw_sprite(sGUIETank, 0, 0 + etankxoff + 24, 4);
}
if (global.etanks >= 10) {
if (global.playerhealth > 999) draw_sprite(sGUIETank, 1, 0 + etankxoff + 24, 10);
if (global.playerhealth <= 999) draw_sprite(sGUIETank, 0, 0 + etankxoff + 24, 10);
}
if (global.etanks >= 11) {
if (global.playerhealth > 1099) draw_sprite(sGUIETank, 1, 0 + etankxoff + 33, 4);
if (global.playerhealth <= 1099) draw_sprite(sGUIETank, 0, 0 + etankxoff + 33, 4);
}
if (global.etanks >= 12) {
if (global.playerhealth > 1199) draw_sprite(sGUIETank, 1, 0 + etankxoff + 33, 10);
if (global.playerhealth <= 1199) draw_sprite(sGUIETank, 0, 0 + etankxoff + 33, 10);
}
if (global.etanks >= 13) {
if (global.playerhealth > 1299) draw_sprite(sGUIETank, 1, 0 + etankxoff + 39, 4);
if (global.playerhealth <= 1299) draw_sprite(sGUIETank, 0, 0 + etankxoff + 39, 4);
}
if (global.etanks >= 14) {
if (global.playerhealth > 1399) draw_sprite(sGUIETank, 1, 0 + etankxoff + 39, 10);
if (global.playerhealth <= 1399) draw_sprite(sGUIETank, 0, 0 + etankxoff + 39, 10);
}
if (global.etanks >= 15) {
if (global.playerhealth > 1499) draw_sprite(sGUIETank, 1, 0 + etankxoff + 45, 4);
if (global.playerhealth <= 1499) draw_sprite(sGUIETank, 0, 0 + etankxoff + 45, 4);
}
if (global.etanks >= 16) {
if (global.playerhealth > 1599) draw_sprite(sGUIETank, 1, 0 + etankxoff + 45, 10);
if (global.playerhealth <= 1599) draw_sprite(sGUIETank, 0, 0 + etankxoff + 45, 10);
}
if (global.etanks >= 17) {
if (global.playerhealth > 1699) draw_sprite(sGUIETank, 1, 0 + etankxoff + 51, 4);
if (global.playerhealth <= 1699) draw_sprite(sGUIETank, 0, 0 + etankxoff + 51, 4);
}
if (global.etanks >= 18) {
if (global.playerhealth > 1799) draw_sprite(sGUIETank, 1, 0 + etankxoff + 51, 10);
if (global.playerhealth <= 1799) draw_sprite(sGUIETank, 0, 0 + etankxoff + 51, 10);
}
if (global.etanks >= 19) {
if (global.playerhealth > 1899) draw_sprite(sGUIETank, 1, 0 + etankxoff + 57, 4);
if (global.playerhealth <= 1899) draw_sprite(sGUIETank, 0, 0 + etankxoff + 57, 4);
}
if (global.etanks >= 20) {
if (global.playerhealth > 1999) draw_sprite(sGUIETank, 1, 0 + etankxoff + 57, 10);
if (global.playerhealth <= 1999) draw_sprite(sGUIETank, 0, 0 + etankxoff + 57, 10);
}
if (global.etanks >= 21) {
if (global.playerhealth > 2099) draw_sprite(sGUIETank, 1, 0 + etankxoff + 66, 4);
if (global.playerhealth <= 2099) draw_sprite(sGUIETank, 0, 0 + etankxoff + 66, 4);
}
if (global.etanks >= 22) {
if (global.playerhealth > 2199) draw_sprite(sGUIETank, 1, 0 + etankxoff + 66, 10);
if (global.playerhealth <= 2199) draw_sprite(sGUIETank, 0, 0 + etankxoff + 66, 10);
}
if (global.etanks >= 23) {
if (global.playerhealth > 2299) draw_sprite(sGUIETank, 1, 0 + etankxoff + 72, 4);
if (global.playerhealth <= 2299) draw_sprite(sGUIETank, 0, 0 + etankxoff + 72, 4);
}
if (global.etanks >= 24) {
if (global.playerhealth > 2399) draw_sprite(sGUIETank, 1, 0 + etankxoff + 72, 10);
if (global.playerhealth <= 2399) draw_sprite(sGUIETank, 0, 0 + etankxoff + 72, 10);
}
if (global.etanks >= 25) {
if (global.playerhealth > 2499) draw_sprite(sGUIETank, 1, 0 + etankxoff + 78, 4);
if (global.playerhealth <= 2499) draw_sprite(sGUIETank, 0, 0 + etankxoff + 78, 4);
}
if (global.etanks >= 26) {
if (global.playerhealth > 2599) draw_sprite(sGUIETank, 1, 0 + etankxoff + 78, 10);
if (global.playerhealth <= 2599) draw_sprite(sGUIETank, 0, 0 + etankxoff + 78, 10);
}
if (global.etanks >= 27) {
if (global.playerhealth > 2699) draw_sprite(sGUIETank, 1, 0 + etankxoff + 84, 4);
if (global.playerhealth <= 2699) draw_sprite(sGUIETank, 0, 0 + etankxoff + 84, 4);
}
if (global.etanks >= 28) {
if (global.playerhealth > 2799) draw_sprite(sGUIETank, 1, 0 + etankxoff + 84, 10);
if (global.playerhealth <= 2799) draw_sprite(sGUIETank, 0, 0 + etankxoff + 84, 10);
}
if (global.etanks >= 29) {
if (global.playerhealth > 2899) draw_sprite(sGUIETank, 1, 0 + etankxoff + 90, 4);
if (global.playerhealth <= 2899) draw_sprite(sGUIETank, 0, 0 + etankxoff + 90, 4);
}
if (global.etanks >= 30) {
if (global.playerhealth > 2999) draw_sprite(sGUIETank, 1, 0 + etankxoff + 90, 10);
if (global.playerhealth <= 2999) draw_sprite(sGUIETank, 0, 0 + etankxoff + 90, 10);
}
draw_set_font(global.guifont2);
if (global.maxmissiles > 0) {
if (global.maxmissiles >= 100) {
draw_background(bgGUIMsl, xoff, 0);
} else draw_background(bgGUISmsl, xoff, 0);
draw_text(0 + xoff + 19, 7, string(global.missiles));
if (global.opmslstyle == 0) {
if (global.currentweapon != 1 || oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) draw_sprite(sGUIMissile, 0, 0 + xoff + 1, 4);
if (global.currentweapon == 1 && oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) {
if (oCharacter.armmsl == 0) draw_sprite(sGUIMissile, 1, 0 + xoff + 1, 4);
if (oCharacter.armmsl == 1) draw_sprite(sGUIMissile, 2, 0 + xoff + 1, 4);
}
}
if (global.opmslstyle == 1) {
if (global.currentweapon == 1) {
draw_sprite(sGUIMissile, 1, 0 + xoff + 1, 4);
} else draw_sprite(sGUIMissile, 0, 0 + xoff + 1, 4);
}
if (global.maxmissiles >= 100) {
xoff += 45;
} else xoff += 38;
}
if (global.maxsmissiles > 0) {
draw_background(bgGUISmsl, xoff, 0);
draw_text(xoff + 19, 7, string(global.smissiles));
if (global.opmslstyle == 0) {
if (global.currentweapon != 2 || oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) draw_sprite(sGUISMissile, 0, xoff + 1, 4);
if (global.currentweapon == 2 && oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) {
if (oCharacter.armmsl == 0) draw_sprite(sGUISMissile, 1, xoff + 1, 4);
if (oCharacter.armmsl == 1) draw_sprite(sGUISMissile, 2, xoff + 1, 4);
}
}
if (global.opmslstyle == 1) {
if (global.currentweapon == 2) {
draw_sprite(sGUISMissile, 1, xoff + 1, 4);
} else draw_sprite(sGUISMissile, 0, xoff + 1, 4);
}
xoff += 38;
}
if (global.maxpbombs > 0) {
draw_background(bgGUISmsl, xoff, 0);
draw_text(xoff + 19, 7, string(global.pbombs));
if (global.opmslstyle == 0) {
if (oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) draw_sprite(sGUIPBomb, 0, xoff + 1, 4);
if (oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) {
if (oCharacter.armmsl == 0) draw_sprite(sGUIPBomb, 1, xoff + 1, 4);
if (oCharacter.armmsl == 1) draw_sprite(sGUIPBomb, 2, xoff + 1, 4);
}
}
if (global.opmslstyle == 1) {
if (global.currentweapon == 3) {
draw_sprite(sGUIPBomb, 1, xoff + 1, 4);
} else draw_sprite(sGUIPBomb, 0, xoff + 1, 4);
}
}
if (global.ophudshowmap && global.ophudshowmetrcount) {
draw_background(bgGUIMap, 250, 0);
xoff = 250;
}
if (global.ophudshowmap && global.ophudshowmetrcount == 0) draw_background(bgGUIMapOnly, 272, 0);
if (global.ophudshowmap == 0 && global.ophudshowmetrcount) {
draw_background(bgGUIMetOnly, 296, 0);
xoff = 296;
}
if (global.ophudshowmetrcount) {
if (global.ophudshowmetrcount == 1) {
draw_background(bgGUIMetCountBG1, xoff + 4, 4);
draw_text(xoff + 6, 21, to_string_lz(global.monstersarea));
}
if (global.ophudshowmetrcount == 2) {
draw_background(bgGUIMetCountBG2, xoff + 4, 4);
draw_text(xoff + 6, 21, to_string_lz(global.monstersleft));
}
}
if (global.ophudshowmap) draw_gui_map(276, 0);
} // if (global.classicmode == 0 && global.opshowhud)


/* ORIGINAL
/// draw_gui()
if (global.classicmode == 0 && global.opshowhud) {
    xoff = 33;
    if (global.etanks == 0) draw_background(bgGUIHealth, 0, 0);
    if (global.etanks == 1 || global.etanks == 2) {
        draw_background(bgGUIHealth1, 0, 0);
        xoff = 42;
    }
    if (global.etanks == 3 || global.etanks == 4) {
        draw_background(bgGUIHealth2, 0, 0);
        xoff = 48;
    }
    if (global.etanks == 5 || global.etanks == 6) {
        draw_background(bgGUIHealth3, 0, 0);
        xoff = 54;
    }
    if (global.etanks == 7 || global.etanks == 8) {
        draw_background(bgGUIHealth4, 0, 0);
        xoff = 60;
    }
    if (global.etanks == 9 || global.etanks == 10) {
        draw_background(bgGUIHealth5, 0, 0);
        xoff = 66;
    }
    draw_set_font(guifont1);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(4, 4, gui_health());
    if (hudflash) {
        draw_set_font(guifont1a);
        draw_text_color(4, 4, gui_health(), c_white, c_white, c_white, c_white, hudflashfx / 4);
    }
    etankxoff = 32;
    if (global.etanks >= 1) {
        if (global.playerhealth > 99) draw_sprite(sGUIETank, 1, 0 + etankxoff, 4);
        if (global.playerhealth <= 99) draw_sprite(sGUIETank, 0, 0 + etankxoff, 4);
    }
    if (global.etanks >= 2) {
        if (global.playerhealth > 199) draw_sprite(sGUIETank, 1, 0 + etankxoff, 10);
        if (global.playerhealth <= 199) draw_sprite(sGUIETank, 0, 0 + etankxoff, 10);
    }
    if (global.etanks >= 3) {
        if (global.playerhealth > 299) draw_sprite(sGUIETank, 1, 0 + etankxoff + 6, 4);
        if (global.playerhealth <= 299) draw_sprite(sGUIETank, 0, 0 + etankxoff + 6, 4);
    }
    if (global.etanks >= 4) {
        if (global.playerhealth > 399) draw_sprite(sGUIETank, 1, 0 + etankxoff + 6, 10);
        if (global.playerhealth <= 399) draw_sprite(sGUIETank, 0, 0 + etankxoff + 6, 10);
    }
    if (global.etanks >= 5) {
        if (global.playerhealth > 499) draw_sprite(sGUIETank, 1, 0 + etankxoff + 12, 4);
        if (global.playerhealth <= 499) draw_sprite(sGUIETank, 0, 0 + etankxoff + 12, 4);
    }
    if (global.etanks >= 6) {
        if (global.playerhealth > 599) draw_sprite(sGUIETank, 1, 0 + etankxoff + 12, 10);
        if (global.playerhealth <= 599) draw_sprite(sGUIETank, 0, 0 + etankxoff + 12, 10);
    }
    if (global.etanks >= 7) {
        if (global.playerhealth > 699) draw_sprite(sGUIETank, 1, 0 + etankxoff + 18, 4);
        if (global.playerhealth <= 699) draw_sprite(sGUIETank, 0, 0 + etankxoff + 18, 4);
    }
    if (global.etanks >= 8) {
        if (global.playerhealth > 799) draw_sprite(sGUIETank, 1, 0 + etankxoff + 18, 10);
        if (global.playerhealth <= 799) draw_sprite(sGUIETank, 0, 0 + etankxoff + 18, 10);
    }
    if (global.etanks >= 9) {
        if (global.playerhealth > 899) draw_sprite(sGUIETank, 1, 0 + etankxoff + 24, 4);
        if (global.playerhealth <= 899) draw_sprite(sGUIETank, 0, 0 + etankxoff + 24, 4);
    }
    if (global.etanks == 10) {
        if (global.playerhealth > 999) draw_sprite(sGUIETank, 1, 0 + etankxoff + 24, 10);
        if (global.playerhealth <= 999) draw_sprite(sGUIETank, 0, 0 + etankxoff + 24, 10);
    }
    draw_set_font(global.guifont2);
    if (global.maxmissiles > 0) {
        if (global.maxmissiles >= 100) {
            draw_background(bgGUIMsl, xoff, 0);
        } else draw_background(bgGUISmsl, xoff, 0);
        draw_text(0 + xoff + 19, 7, string(global.missiles));
        if (global.opmslstyle == 0) {
            if (global.currentweapon != 1 || oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) draw_sprite(sGUIMissile, 0, 0 + xoff + 1, 4);
            if (global.currentweapon == 1 && oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) {
                if (oCharacter.armmsl == 0) draw_sprite(sGUIMissile, 1, 0 + xoff + 1, 4);
                if (oCharacter.armmsl == 1) draw_sprite(sGUIMissile, 2, 0 + xoff + 1, 4);
            }
        }
        if (global.opmslstyle == 1) {
            if (global.currentweapon == 1) {
                draw_sprite(sGUIMissile, 1, 0 + xoff + 1, 4);
            } else draw_sprite(sGUIMissile, 0, 0 + xoff + 1, 4);
        }
        if (global.maxmissiles >= 100) {
            xoff += 45;
        } else xoff += 38;
    }
    if (global.maxsmissiles > 0) {
        draw_background(bgGUISmsl, xoff, 0);
        draw_text(xoff + 19, 7, string(global.smissiles));
        if (global.opmslstyle == 0) {
            if (global.currentweapon != 2 || oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) draw_sprite(sGUISMissile, 0, xoff + 1, 4);
            if (global.currentweapon == 2 && oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) {
                if (oCharacter.armmsl == 0) draw_sprite(sGUISMissile, 1, xoff + 1, 4);
                if (oCharacter.armmsl == 1) draw_sprite(sGUISMissile, 2, xoff + 1, 4);
            }
        }
        if (global.opmslstyle == 1) {
            if (global.currentweapon == 2) {
                draw_sprite(sGUISMissile, 1, xoff + 1, 4);
            } else draw_sprite(sGUISMissile, 0, xoff + 1, 4);
        }
        xoff += 38;
    }
    if (global.maxpbombs > 0) {
        draw_background(bgGUISmsl, xoff, 0);
        draw_text(xoff + 19, 7, string(global.pbombs));
        if (global.opmslstyle == 0) {
            if (oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) draw_sprite(sGUIPBomb, 0, xoff + 1, 4);
            if (oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) {
                if (oCharacter.armmsl == 0) draw_sprite(sGUIPBomb, 1, xoff + 1, 4);
                if (oCharacter.armmsl == 1) draw_sprite(sGUIPBomb, 2, xoff + 1, 4);
            }
        }
        if (global.opmslstyle == 1) {
            if (global.currentweapon == 3) {
                draw_sprite(sGUIPBomb, 1, xoff + 1, 4);
            } else draw_sprite(sGUIPBomb, 0, xoff + 1, 4);
        }
    }
    if (global.ophudshowmap && global.ophudshowmetrcount) {
        draw_background(bgGUIMap, 250, 0);
        xoff = 250;
    }
    if (global.ophudshowmap && global.ophudshowmetrcount == 0) draw_background(bgGUIMapOnly, 272, 0);
    if (global.ophudshowmap == 0 && global.ophudshowmetrcount) {
        draw_background(bgGUIMetOnly, 296, 0);
        xoff = 296;
    }
    if (global.ophudshowmetrcount) {
        if (global.ophudshowmetrcount == 1) {
            draw_background(bgGUIMetCountBG1, xoff + 4, 4);
            draw_text(xoff + 6, 21, to_string_lz(global.monstersarea));
        }
        if (global.ophudshowmetrcount == 2) {
            draw_background(bgGUIMetCountBG2, xoff + 4, 4);
            draw_text(xoff + 6, 21, to_string_lz(global.monstersleft));
        }
    }
    if (global.ophudshowmap) draw_gui_map(276, 0);
} // if (global.classicmode == 0 && global.opshowhud)
*/

