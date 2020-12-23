/// add_log(log_id)
if (global.log[argument0] == 0) {
    global.log[argument0] = 1;
    global.newlog[argument0] = 1;
    global.gotolog = argument0;
    if (global.ophudshowlogmsg) {
        notif = instance_create(0, 0, oNotification);
        notif.text1 = get_text("ScanEvents", "NewLog");
        notif.text2 = get_text("ScanEvents", "NewLog_Text");
        notif.btn1_name = "Start";
        notif.log = 1;
        //notif.btn1_name = get_text("Buttons", "Start");
        notif.btn2_name = "";
        notif.alarm[0] = 360;
    }
}
