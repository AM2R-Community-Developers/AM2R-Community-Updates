var button = obj_input.gamepadButtons[? argument0];

if (button == undefined) {
	button = "Button "+ string(argument0 - 32769);
}
return button;
