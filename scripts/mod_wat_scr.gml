/*
switch (argument2)
{
    case 'ETanks':
    if (argument0 > 20) { return 20; }
    if (argument0 < 0) { return 0; }
    break;
    case 'Missiles':
    if (argument0 > 149) { return 149; }
    if (argument0 < 0) { return 0; }
    break;
    case 'SuperMissiles':
    case 'PowerBombs':
    if (argument0 > 24) { return 24; }
    if (argument0 < 0) { return 0; }
    break;
}

//global.difficulty

//if (global.mod_cheating == 1) { return abs(argument0); }
return argument0;
