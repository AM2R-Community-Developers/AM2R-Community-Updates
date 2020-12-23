//not all these variables used.
switch (argument0)
{
    case 0:
        oControl.bombs_placed = true;
        oControl.twocount_B_SJ++;
        oControl.threecount++;
        break;
    case 4:
        oControl.hijump_placed = true;
        oControl.twocount_HJ_SJ++;
        oControl.threecount++;
        break;
    case 6:
        oControl.spacejump_placed = true;
        oControl.twocount_B_SJ++;
        oControl.twocount_HJ_SJ++;
        oControl.threecount++;
        break;
    case 7:
        oControl.speed_placed = true;
        break;
    case 8:
        oControl.screw_placed = true;
        break;
}
