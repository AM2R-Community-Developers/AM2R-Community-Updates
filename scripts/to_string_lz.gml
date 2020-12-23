/// to_string_lz(number)
// 4 -> "04"
// 11 -> "11"
if (argument0 < 10) {
    return "0" + string(argument0);
} else return string(argument0);
