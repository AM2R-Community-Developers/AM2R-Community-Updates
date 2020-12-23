/// sprite_validate(index)
// Workaround for Android file access issues.

// Just realized this was pointless and the real issue was just Wanderer being a dip.
// However, since this still works just fine...
// Nothing's changing.

if (os_type != os_android) {
    var file = sprite_exists(argument0);
    return file;
} else {
    return -1;
}
