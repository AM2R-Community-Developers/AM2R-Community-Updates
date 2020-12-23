/*
ini_open(working_directory + "random" + string(global.saveslot + 1) + ".ini");
var can_return = false;
if (ini_read_real('Items', string(argument0), argument0) == argument0) { can_return = true; }
if (can_return) { ini_close(); return argument0; }

var current_item = ini_read_real('Items', string(argument0), argument0)
var temp_item = 1;
if (ini_read_real('Items', '0', 0) == argument0) { temp_item = 0; }
if (ini_read_real('Items', '2', 2) == argument0) { temp_item = 2; }
if (ini_read_real('Items', '3', 3) == argument0) { temp_item = 3; }
if (ini_read_real('Items', '4', 4) == argument0) { temp_item = 4; }
if (ini_read_real('Items', '5', 5) == argument0) { temp_item = 5; }
if (ini_read_real('Items', '6', 6) == argument0) { temp_item = 6; }
if (ini_read_real('Items', '7', 7) == argument0) { temp_item = 7; }
if (ini_read_real('Items', '8', 8) == argument0) { temp_item = 8; }
if (ini_read_real('Items', '10', 10) == argument0) { temp_item = 10; }
if (ini_read_real('Items', '11', 11) == argument0) { temp_item = 11; }
if (ini_read_real('Items', '12', 12) == argument0) { temp_item = 12; }
if (ini_read_real('Items', '13', 13) == argument0) { temp_item = 13; }
if (ini_read_real('Items', '14', 14) == argument0) { temp_item = 14; }

ini_close();

if (temp_item == 1) { return argument0; }

ini_open(working_directory + "random" + string(global.saveslot + 1) + ".ini");
ini_write_real('Items', string(argument0), argument0);
ini_write_real('Items', string(temp_item), current_item);
ini_close();

return argument0;
*/
