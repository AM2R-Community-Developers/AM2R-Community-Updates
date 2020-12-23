/// create_log_category(category_id)
var upd;

if (instance_exists(oLog)) with (oLog) instance_destroy();
if (argument0 == 0) {
    clognum = 6;
    min_log = 0;
}
if (argument0 == 1) {
    clognum = 10;
    min_log = 10;
}
if (argument0 == 2) {
    clognum = 10;
    min_log = 20;
}
if (argument0 == 3) {
    clognum = 9;
    min_log = 30;
}
if (argument0 == 4) { // <-------- NEWLOGSCODE
    clognum = 4;
    min_log = 40;
}

dlognum = 0;
i = min_log;
repeat (clognum) {
    if (global.log[i] == 1) {
        logobj[dlognum] = create_log_obj(dlognum, lbl[i], txt[i], pic[i], sep, i);
        dlognum += 1;
    } else if (global.log[i] == 2) {
        logobj[dlognum] = create_log_obj(dlognum, lbl[i], upd[i], pic[i], sep, i);
        dlognum += 1;
    }
    i += 1;
}
max_log = min_log + dlognum - 1;
global.curropt = 0;
