if (active) {
    if (global.maxmissiles == oControl.mod_Mstartingcount) {
        event_inherited();
    } else {
        itemtype = 1;
        popup_text(get_text("Notifications", "MissileTank"));
        event_inherited();
    }
    if (global.difficulty < 2) global.maxmissiles += 5;
    if (global.difficulty == 2) global.maxmissiles += 2;
    global.missiles = global.maxmissiles;
    global.mtanks += 1;
}
