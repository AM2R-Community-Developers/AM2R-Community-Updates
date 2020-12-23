if (active) {
    if (global.maxsmissiles == 0) {
        event_inherited();
    } else {
        itemtype = 1;
        popup_text(get_text("Notifications", "SuperMissileTank"));
        event_inherited();
    }
    if (global.difficulty < 2) global.maxsmissiles += 2;
    if (global.difficulty == 2) global.maxsmissiles += 1;
    global.smissiles = global.maxsmissiles;
    global.stanks += 1;
}
