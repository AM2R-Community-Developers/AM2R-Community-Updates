/// create_log_entry(log_id)
var logid, lobj;
logid = global.log[argument0];
if (logid != 0) {
    lobj = instance_create(10 + (oControl.widescreen_space/3), 53 + j * 16, oLogEntry);
    lobj.label = lbl[argument0];
    lobj.optionid = i;
    lobj.logid = argument0;
    logobj[i] = lobj;
    i += 1;
    j += 1;
    lognum += 1;
}
