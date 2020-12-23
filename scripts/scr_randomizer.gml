var temp_seed = random_get_seed();
randomize();
oControl.seed = random_get_seed();
random_set_seed(oControl.seed);

if (oControl.mod_usemanualseed == 1) { 
    random_set_seed(oControl.mod_seed);
    oControl.seed = oControl.mod_seed; 
}

var list_bombscrew = ds_list_create();

if (oControl.mod_bombrun == 1 && oControl.mod_randomitems == 1) { ds_list_add(list_bombscrew, 0); }
if (oControl.mod_screwattackrun == 1 && oControl.mod_randomitems == 1) { ds_list_add(list_bombscrew, 1); }
if (oControl.mod_powerbombrun == 1 && oControl.mod_randomitems == 1) { ds_list_add(list_bombscrew, 2); }

if (oControl.mod_bombrun =! 1 && oControl.mod_screwattackrun =! 1 && oControl.mod_powerbombrun =! 1)
{
ds_list_add(list_bombscrew, 0);
}

ds_list_shuffle(list_bombscrew);

var screwbombs = ds_list_find_value(list_bombscrew, ds_list_size(list_bombscrew) - 1);
if (oControl.mod_randomitems == 0) { screwbombs = 0; }

    
switch (screwbombs)
{
    case 0:
        scr_randomizer_bombs();
        break
    case 1:
        scr_randomizer_screwattack()
        break;
    case 2:
        scr_randomizer_powerbombs();
        break;
    default:
        screwbombs = 0;
        scr_randomizer_bombs();
        break;
}




random_set_seed(temp_seed);

if (oControl.mod_randomitems == 1) { scr_randomizer_items(screwbombs); }


