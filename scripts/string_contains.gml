/// @function     string_contains(original_string, substring)
/// @description  Checks if a string contains a substring. Returns boolean.
/// @argument     original_string
/// @argument     substring 

// Temporary Variables
var originalString = argument0;
var checkString = argument1;

var newString = string_replace(originalString,checkString,"");

return !(newString == originalString);
