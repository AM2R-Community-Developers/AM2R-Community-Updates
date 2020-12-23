//Must check for absolute value here first. Could cheat otherwise.
var temp = abs(argument0);
//if (global.mod_cheating == 1) { return temp; }
if (temp > argument1) { return argument1; }
return temp;
