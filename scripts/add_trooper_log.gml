///add_trooper_log(trooperlognum);

for(var i = 7; i >= 0; i--) {
    if(global.trooperlog[i] == 0) {
        global.trooperlog[i] = argument[0];
        break;
    }
}

if (global.log[45] == 1) {
    global.newlog[45] = 1;
    global.gotolog = 45;
    if (global.ophudshowlogmsg) {
        notif = instance_create(0, 0, oNotification);
        notif.text1 = get_text("ScanEvents", "UpdateLog");
        notif.text2 = get_text("ScanEvents", "UpdateLog_Text");
        notif.btn1_name = "Start";
        notif.btn2_name = "";
        notif.alarm[0] = 360;
        notif.log = 1;
    }
}
else add_log(45);
