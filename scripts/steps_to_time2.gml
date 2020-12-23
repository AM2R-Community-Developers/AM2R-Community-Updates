/// steps_to_time2(steps)
// Converts a number of steps into "hh:mm:ss" format.
sec = floor(argument0 / 60);
minute = floor(sec / 60);
hour = floor(minute / 60);
sec2 = sec - minute * 60;
minute2 = minute - hour * 60;
if (minute2 < 10) {
    minstr = "0" + string(minute2);
} else minstr = string(minute2);
if (sec2 < 10) {
    secstr = "0" + string(sec2);
} else secstr = string(sec2);
if (hour < 10) {
    hourstr = "0" + string(hour);
} else hourstr = string(hour);
return hourstr + ":" + minstr + ":" + secstr;
