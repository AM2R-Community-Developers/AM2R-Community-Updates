/// get_keyname()
// This wasn't very fun to decode.
if (argument0 == ord("A")) return "A";
if (argument0 == ord("B")) return "B";
if (argument0 == ord("C")) return "C";
if (argument0 == ord("D")) return "D";
if (argument0 == ord("E")) return "E";
if (argument0 == ord("F")) return "F";
if (argument0 == ord("G")) return "G";
if (argument0 == ord("H")) return "H";
if (argument0 == ord("I")) return "I";
if (argument0 == ord("J")) return "J";
if (argument0 == ord("K")) return "K";
if (argument0 == ord("L")) return "L";
if (argument0 == ord("M")) return "M";
if (argument0 == ord("N")) return "N";
if (argument0 == ord("O")) return "O";
if (argument0 == ord("P")) return "P";
if (argument0 == ord("Q")) return "Q";
if (argument0 == ord("R")) return "R";
if (argument0 == ord("S")) return "S";
if (argument0 == ord("T")) return "T";
if (argument0 == ord("U")) return "U";
if (argument0 == ord("V")) return "V";
if (argument0 == ord("W")) return "W";
if (argument0 == ord("X")) return "X";
if (argument0 == ord("Y")) return "Y";
if (argument0 == ord("Z")) return "Z";
if (argument0 == ord("0")) return "0";
if (argument0 == ord("1")) return "1";
if (argument0 == ord("2")) return "2";
if (argument0 == ord("3")) return "3";
if (argument0 == ord("4")) return "4";
if (argument0 == ord("5")) return "5";
if (argument0 == ord("6")) return "6";
if (argument0 == ord("7")) return "7";
if (argument0 == ord("8")) return "8";
if (argument0 == ord("9")) return "9";
if (argument0 == 191) return "/";
if (argument0 == 222) return "'";
if (argument0 == 186) return ";";
if (argument0 == 188) return ",";
if (argument0 == 190) return ".";
if (argument0 == 219) return "[";
if (argument0 == 221) return "]";
if (argument0 == 220) return "\";
if (argument0 == 192) return "`";
if (argument0 == 189) return "-";
if (argument0 == 187) return "=";



if (argument0 == 144) return get_text("Buttons", "NumLk");
if (argument0 == 145) return get_text("Buttons", "ScrollLock");
//if (argument0 == 92) return get_text("Buttons", "WinKey");
if (argument0 == 164) return get_text("Buttons", "AltRight");
if (argument0 == 165) return get_text("Buttons", "AltLeft");
if (argument0 == 27) return get_text("Buttons", "Escape");
if (argument0 == 93) return get_text("Buttons", "Menu")
if (argument0 == vk_backspace) return get_text("Buttons", "Backspace"); //"Backspace";
if (argument0 == vk_tab) return get_text("Buttons", "Tab"); //"Tab";
if (argument0 == vk_enter) return get_text("Buttons", "Enter"); //"Enter";


if (argument0 == vk_alt) return get_text("Buttons", "Alt"); //"Alt";
if (argument0 == vk_pause) return get_text("Buttons", "Pause"); //"Pause";
//if (argument0 == 20) get_text("Buttons", "CapsLock"); //return "CapsLock";
if (argument0 == vk_space) return get_text("Buttons", "SpaceBar"); //"SpaceBar";
if (argument0 == vk_pageup) return get_text("Buttons", "PageUp"); //"PageUp";
if (argument0 == vk_pagedown) return get_text("Buttons", "PageDown"); //"PageDown";
if (argument0 == vk_end) return get_text("Buttons", "End"); //"End";
if (argument0 == vk_home) return get_text("Buttons", "Home"); //"Home";
if (argument0 == vk_left) return get_text("Buttons", "Left"); //"Left";
if (argument0 == vk_up) return get_text("Buttons", "Up"); //"Up";
if (argument0 == vk_right) return get_text("Buttons", "Right"); //"Right";
if (argument0 == vk_down) return get_text("Buttons", "Down"); //"Down";
if (argument0 == vk_insert) return get_text("Buttons", "Insert"); //"Insert";
if (argument0 == vk_delete) return get_text("Buttons", "Delete"); //"Delete";
if (argument0 == vk_numpad0) return get_text("Buttons", "NumPad0"); //"NumPad 0";
if (argument0 == vk_numpad1) return get_text("Buttons", "NumPad1"); //"NumPad 1";
if (argument0 == vk_numpad2) return get_text("Buttons", "NumPad2"); //"NumPad 2";
if (argument0 == vk_numpad3) return get_text("Buttons", "NumPad3"); //"NumPad 3";
if (argument0 == vk_numpad4) return get_text("Buttons", "NumPad4"); //"NumPad 4";
if (argument0 == vk_numpad5) return get_text("Buttons", "NumPad5"); //"NumPad 5";
if (argument0 == vk_numpad6) return get_text("Buttons", "NumPad6"); //"NumPad 6";
if (argument0 == vk_numpad7) return get_text("Buttons", "NumPad7"); //"NumPad 7";
if (argument0 == vk_numpad8) return get_text("Buttons", "NumPad8"); //"NumPad 8";
if (argument0 == vk_numpad9) return get_text("Buttons", "NumPad9"); //"NumPad 9";
if (argument0 == vk_multiply) return get_text("Buttons", "NumPadMult"); //"NumPad *";
if (argument0 == vk_add) return get_text("Buttons", "NumPadPlus"); //"NumPad +";
if (argument0 == vk_subtract) return get_text("Buttons", "NumPadMinus"); //"NumPad -";
if (argument0 == vk_decimal) return get_text("Buttons", "NumPadDot"); //"NumPad .";
if (argument0 == vk_divide) return get_text("Buttons", "NumPadDivide"); //"NumPad /";
if (argument0 == vk_lcontrol) return get_text("Buttons", "LControl"); //"Control";
if (argument0 == vk_rcontrol) return get_text("Buttons", "RControl"); //"Control";
if (argument0 == vk_lshift) return get_text("Buttons", "LShift"); //"Shift";
if (argument0 == vk_rshift) return get_text("Buttons", "RShift"); //"Shift";

if (argument0 == vk_shift) return get_text("Buttons", "Shift"); //"Shift";
if (argument0 == vk_control) return get_text("Buttons", "Control"); //"Control";

return string(argument0);
