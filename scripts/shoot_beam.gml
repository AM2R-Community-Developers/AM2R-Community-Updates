/// shoot_beam(direction)
if (chargebeam < 1) chargebeam = 0;
instance_create(x + aspr2x, y + aspr2y, oMflash);
beams = 1;
if (global.wbeam && !global.sbeam && chargebeam >= 1) beams = 2;
if (global.sbeam) beams = 3;
i = 0;
repeat (beams) {
    beam = instance_create(x + aspr2x, y + aspr2y, oBeam);
    beam.ibeam = global.ibeam;
    beam.wbeam = global.wbeam;
    beam.pbeam = global.pbeam;
    beam.sbeam = global.sbeam;
    beam.beamid = i;
    beam.direction = argument0;
    beam.maindir = argument0;
    beam.speed = 6.4;
    beam.offset = 0;
    if (global.wbeam) {
        global.wbdir = !global.wbdir;
        beam.wbeamdir = global.wbdir;
        beam.speed = 9;
        beam.depth = -1000;
    }
    if (global.ibeam) beam.alarm[0] = 1 + random(5);
    if (global.pbeam) beam.alarm[1] = 1;
    if (chargebeam >= 1) beam.speed = 12;
    beam.image_angle = argument0;
    beam.fcolor = make_color_rgb(180, 180, 45);
    if (global.wbeam) beam.fcolor = make_color_rgb(240, 150, 210);
    if (global.pbeam) beam.fcolor = make_color_rgb(120, 250, 210);
    if (global.ibeam) beam.fcolor = make_color_rgb(75, 220, 255);
    beam.falpha = 0.4;
    beam.fxscale = 0.6;
    beam.fyscale = 0.6;
    if (global.sbeam) beam.fxscale = 0.8;
    if (chargebeam >= 1) {
        beam.fxscale = 1;
        beam.fyscale = 1;
    }
    nofire = 5;
    beam.damage = 5;
    beam.chargebeam = 0;
    if (global.wbeam) {
        beam.damage *= 1.5;
        nofire += 2;
    }
    if (global.ibeam) {
        beam.damage *= 1.5;
        nofire += 2;
    }
    if (global.sbeam) {
        beam.damage *= 0.8;
        nofire += 2;
    }
    if (global.pbeam) {
        beam.damage *= 1.2;
        nofire += 3;
    }
    if (chargebeam >= 1) {
        beam.damage *= 3;
        beam.chargebeam = 1;
        if (global.wbeam && !global.sbeam) beam.damage *= 0.6;
    }
    if (aimdirection == 1) {
        beam.x += 4;
        if (state != GRIP) beam.y -= 1;
    }
    if (aimdirection == 0) beam.x -= 4;
    if (aimdirection == 6) {
        beam.y += 4;
        if (facing == LEFT) beam.x += 1;
    }
    if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 0) {
        if (chargebeam == 0) beam.sprite_index = sBeam;
        if (chargebeam >= 1) {
            beam.sprite_index = sBeam2;
            beam.offset = 4;
        }
    }
    if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 0) {
        if (chargebeam == 0) beam.sprite_index = sWBeam;
        if (chargebeam >= 1) beam.sprite_index = sWBeam2;
        beam.offset = 10;
    }
    if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 0) {
        if (chargebeam == 0) beam.sprite_index = sIBeam;
        if (chargebeam >= 1) {
            beam.sprite_index = sIBeam2;
            beam.image_xscale = 1.4;
        }
    }
    if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 0) {
        if (chargebeam == 0) beam.sprite_index = sPBeam;
        if (chargebeam >= 1) beam.sprite_index = sPBeam2;
        beam.offset = 4;
    }
    if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 1) {
        if (chargebeam == 0) {
            beam.sprite_index = sSBeam;
            beam.offset = 5;
        }
        if (chargebeam >= 1) {
            beam.sprite_index = sSBeam2;
            beam.offset = 8;
        }
    }
    if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 1) {
        if (chargebeam == 0) beam.sprite_index = sWBeam;
        if (chargebeam >= 1) beam.sprite_index = sWBeam2;
        beam.offset = 12;
    }
    if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 1) {
        if (chargebeam == 0) {
            beam.sprite_index = sISBeam;
            beam.image_xscale = 0.6;
        }
        if (chargebeam >= 1) {
            beam.sprite_index = sISBeam;
            beam.image_xscale = 1.2;
        }
        beam.offset = 8;
    }
    if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 1) {
        if (chargebeam == 0) beam.sprite_index = sSPBeam;
        if (chargebeam >= 1) beam.sprite_index = sSPBeam2;
        beam.offset = 8;
    }
    if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 0) {
        if (chargebeam == 0) beam.sprite_index = sIWBeam;
        if (chargebeam >= 1) beam.sprite_index = sIWBeam2;
        beam.offset = 8;
    }
    if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 0) {
        if (chargebeam == 0) beam.sprite_index = sPBeam;
        if (chargebeam >= 1) beam.sprite_index = sPBeam2;
        beam.offset = 8;
    }
    if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 0) {
        if (chargebeam == 0) {
            beam.sprite_index = sIPBeam;
            beam.image_xscale = 0.6;
            beam.image_yscale = 0.6;
        }
        if (chargebeam >= 1) beam.sprite_index = sIPBeam;
        beam.offset = 8;
    }
    if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 1) {
        if (chargebeam == 0) beam.sprite_index = sIWBeam;
        if (chargebeam >= 1) beam.sprite_index = sIWBeam2;
        beam.offset = 8;
    }
    if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 1) {
        if (chargebeam == 0) beam.sprite_index = sPBeam;
        if (chargebeam >= 1) beam.sprite_index = sPBeam2;
        beam.offset = 8;
    }
    if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 1) {
        if (chargebeam == 0) beam.sprite_index = sISPBeam;
        if (chargebeam >= 1) beam.sprite_index = sISPBeam2;
        beam.offset = 8;
    }
    if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 0) {
        if (chargebeam == 0) {
            beam.sprite_index = sIPBeam;
            beam.image_xscale = 0.6;
            beam.image_yscale = 0.6;
        }
        if (chargebeam >= 1) beam.sprite_index = sIPBeam;
        beam.offset = 8;
    }
    if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 1) {
        if (chargebeam == 0) beam.sprite_index = sISWPBeam;
        if (chargebeam >= 1) beam.sprite_index = sISWPBeam2;
        beam.offset = 8;
    }
    with (beam) if (offset != 0) beam_offset(offset, maindir);
    i += 1;
} // repeat (beams)
if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 0) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeam);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamC);
}
if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 0) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamW);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCW);
}
if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 0) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamI);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCI);
}
if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 0) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamP);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCP);
}
if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 1) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamS);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCS);
}
if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 1) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamSW);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCSW);
}
if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 1) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamSI);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCSI);
}
if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 1) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamSP);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCSP);
}
if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 0) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamWI);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCWI);
}
if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 0) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamWP);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCWP);
}
if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 0) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamIP);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCIP);
}
if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 1) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamSWI);
    if (chargebeam == 1) PlaySoundMono(sndFireBeamCSWI);
}
if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 1) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamSWP);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCSWP);
}
if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 1) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamSIP);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCSIP);
}
if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 0) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamWIP);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCWIP);
}
if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 1) {
    if (chargebeam == 0) PlaySoundMono(sndFireBeamSWIP);
    if (chargebeam >= 1) PlaySoundMono(sndFireBeamCSWIP);
}
