/// update_log(log_id)
if (global.log[argument0] == 1) {
    global.log[argument0] = 2;
    global.newlog[argument0] = 1;
    global.gotolog = argument0;
    if (global.ophudshowlogmsg) {
        notif = instance_create(0, 0, oNotification);
        notif.text1 = get_text("ScanEvents", "UpdateLog");
        notif.text2 = get_text("ScanEvents", "UpdateLog_Text");
        notif.btn1_name = "Start"
        //notif.btn1_name = get_text("ScanEvents", "UpdateLog_Start");
        notif.btn2_name = "";
        notif.alarm[0] = 360;
        notif.log = 1;
    }
}
