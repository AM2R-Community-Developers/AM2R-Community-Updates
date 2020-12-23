/// scan_log(log_id, text, delay, mode)
if (global.log[argument0] == 0 && argument3 == 0 || global.log[argument0] == 1 && argument3 == 1 && !instance_exists(oScanning)) {
    scan = instance_create(0, 0, oScanning);
    scan.lognumber = argument0;
    scan.text = argument1;
    scan.alarm[0] = argument2;
    scan.mode = argument3;
    
    
    
}
