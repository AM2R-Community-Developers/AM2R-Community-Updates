/// show_all_map()
i = 0;
repeat (80) {
    j = 0;
    repeat (80) {
        global.dmap[i, j] = 1;
        j += 1;
    }
    i += 1;
}
