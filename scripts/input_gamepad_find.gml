for (var i = 0; i < 12; i++) {
	if (gamepad_is_connected(i)) {
		return i;
	}
}
return 0;
