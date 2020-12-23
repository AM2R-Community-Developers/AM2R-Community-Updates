/// string_split()
var num, newVal, sepNum, delemiter;
num = argument1;
newVal = "";
sepNum = 0;
delemiter = argument2;
for (i = 1; i < string_length(argument0) + 1; i += 1) {
    if (string_char_at(argument0, i) == delemiter) {
        sepNum += 1;
        i += 1;
    }
    if (sepNum == num) newVal += string_char_at(argument0, i);
}
return newVal;
