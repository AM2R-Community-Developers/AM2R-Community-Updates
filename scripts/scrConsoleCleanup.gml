//MAKE SURE YOU USE THIS FUNCTION SO YOUR GAME DOESN'T HAVE MEMORY LEAKS

if(ds_exists(ConsoleHistory, ds_type_list)){
    ds_list_destroy(ConsoleHistory);
}

if(ds_exists(ConsoleCommands, ds_type_map)){
    ds_map_destroy(ConsoleCommands);
}
