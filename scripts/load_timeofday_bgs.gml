/// load_timeofday_bgs(time_id)
if (argument0 == 0) {
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a) {
        with (oBackground) {
            bgid[0] = bgA0Sky;
            if (oControl.widescreen) bgid[0] = bgA0Sky_wide;
            bgid[1] = bgA0Mountain;
            bgid[2] = bgA0Mountain;
            bgid[3] = bgA0Mountain;
            bgid[4] = bgA0Mountain;
            if (oControl.widescreen) {
                bgid[5] = bgA0Mountain;
            }
        }
        with (oShip1) sprite_index = sShip;
        tile_layer_delete(110);
        tile_layer_delete(120);
        tile_layer_delete(-110);
        tile_layer_delete(-120);
        tile_layer_delete(-111);
        tile_layer_delete(-121);
    }
    if (room == rm_a1h05) with (oBackground) {
        bgid[0] = bgA0Sky;
        if (oControl.widescreen) bgid[0] = bgA0Sky_wide;
        bgid[1] = bgA1Canyon;
    }
}
if (argument0 == 1) {
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a) {
        with (oBackground) {
            bgid[0] = bgA0SkyTwilight;
            if (oControl.widescreen) {
                bgid[0] = bgA0SkyTwilight_wide;
            }
            bgid[1] = bgA0MountainTwilight;
            bgid[2] = bgA0MountainTwilight;
            bgid[3] = bgA0MountainTwilight;
            bgid[4] = bgA0MountainTwilight;
            if (oControl.widescreen) {
                bgid[5] = bgA0MountainTwilight;
            }
        }
        with (oShip1) sprite_index = sShip;
        tile_layer_delete(100);
        tile_layer_delete(120);
        tile_layer_delete(-100);
        tile_layer_delete(-120);
        tile_layer_delete(-101);
        tile_layer_delete(-121);
    }
    if (room == rm_a1h05) with (oBackground) {
        bgid[0] = bgA0SkyTwilight;
        if (oControl.widescreen) {
            bgid[0] = bgA0SkyTwilight_wide;
        }
        bgid[1] = bgA1CanyonTwilight;
    }
}
if (argument0 == 2) {
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a) {
        with (oBackground) {
            bgid[0] = bgA0SkyNight;
            if (oControl.widescreen) bgid[0] = bgA0SkyNight_wide;
            bgid[1] = bgA0MountainNight;
            bgid[2] = bgA0MountainNight;
            bgid[3] = bgA0MountainNight;
            bgid[4] = bgA0MountainNight;
            if (oControl.widescreen) {
                bgid[5] = bgA0MountainNight;
            }
        }
        with (oShip1) sprite_index = sShipNight;
        tile_layer_delete(110);
        tile_layer_delete(100);
        tile_layer_delete(-110);
        tile_layer_delete(-100);
        tile_layer_delete(-111);
        tile_layer_delete(-101);
    }
    if (room == rm_a1h05) with (oBackground) {
        bgid[0] = bgA0SkyNight;
        if (oControl.widescreen) bgid[0] = bgA0SkyNight_wide;
        bgid[1] = bgA1CanyonNight;
    }
}
