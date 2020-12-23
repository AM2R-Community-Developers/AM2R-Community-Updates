/// check_xjoybtn() droidcode
// Unlike check_joybtn, only polls the first gamepad for some reason (on Windows).

// Still only polls one gamepad, but it's guaranteed to be one that exists. (1.5.1)
// You're welcome.

var deviceslot = global.gamepadIndex;
if(os_type == os_android || os_type == os_linux) deviceslot = global.opjoyid;

if (gamepad_button_check(deviceslot, gp_face1)) return gp_face1;
if (gamepad_button_check(deviceslot, gp_face2)) return gp_face2;
if (gamepad_button_check(deviceslot, gp_face3)) return gp_face3;
if (gamepad_button_check(deviceslot, gp_face4)) return gp_face4;
if (gamepad_button_check(deviceslot, gp_shoulderl)) return gp_shoulderl;
if (gamepad_button_check(deviceslot, gp_shoulderlb)) return gp_shoulderlb;
if (gamepad_button_check(deviceslot, gp_shoulderr)) return gp_shoulderr;
if (gamepad_button_check(deviceslot, gp_shoulderrb)) return gp_shoulderrb;
if (gamepad_button_check(deviceslot, gp_select) || (os_type == os_android && keyboard_check(vk_backspace))) return gp_select;
if (gamepad_button_check(deviceslot, gp_start)) return gp_start;
if (gamepad_button_check(deviceslot, gp_stickl)) return gp_stickl;
if (gamepad_button_check(deviceslot, gp_stickr)) return gp_stickr;
return 0;
