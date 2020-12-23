/// make_escape_sequence_fx(phase)
var fx;
if (global.event[203] > 0 && global.event[203] < 9) {
    fx = instance_create(0, 0, oA4EscapeSeqFX);
    if (argument0 == 0) {
        fx.shaking = 0;
        fx.explosions = 0;
    }
    if (argument0 == 1) {
        fx.shaking = 1;
        fx.explosions = 0;
    }
    if (argument0 == 2) {
        fx.shaking = 1;
        fx.explosions = 1;
    }
}
