/// gui_health()
if (global.playerhealth < 0) global.playerhealth = 0;
guih = ceil(global.playerhealth % 100); //guih = ceil(global.playerhealth);

if (oControl.mod_etankhealthmult == 1)
{
    if (global.playerhealth >= 100) guih = global.playerhealth - 100;
    if (global.playerhealth >= 200) guih = global.playerhealth - 200;
    if (global.playerhealth >= 300) guih = global.playerhealth - 300;
    if (global.playerhealth >= 400) guih = global.playerhealth - 400;
    if (global.playerhealth >= 500) guih = global.playerhealth - 500;
    if (global.playerhealth >= 600) guih = global.playerhealth - 600;
    if (global.playerhealth >= 700) guih = global.playerhealth - 700;
    if (global.playerhealth >= 800) guih = global.playerhealth - 800;
    if (global.playerhealth >= 900) guih = global.playerhealth - 900;
    if (global.playerhealth >= 1000) guih = global.playerhealth - 1000;
    if (global.etanks > 10)
    {
        if (global.playerhealth >= 1100) guih = global.playerhealth - 1100;
        if (global.playerhealth >= 1200) guih = global.playerhealth - 1200;
        if (global.playerhealth >= 1300) guih = global.playerhealth - 1300;
        if (global.playerhealth >= 1400) guih = global.playerhealth - 1400;
        if (global.playerhealth >= 1500) guih = global.playerhealth - 1500;
        if (global.playerhealth >= 1600) guih = global.playerhealth - 1600;
        if (global.playerhealth >= 1700) guih = global.playerhealth - 1700;
        if (global.playerhealth >= 1800) guih = global.playerhealth - 1800;
        if (global.playerhealth >= 1900) guih = global.playerhealth - 1900;
        if (global.playerhealth >= 2000) guih = global.playerhealth - 2000;
        if (global.playerhealth >= 2100) guih = global.playerhealth - 2100;
        if (global.playerhealth >= 2200) guih = global.playerhealth - 2200;
        if (global.playerhealth >= 2300) guih = global.playerhealth - 2300;
        if (global.playerhealth >= 2400) guih = global.playerhealth - 2400;
        if (global.playerhealth >= 2500) guih = global.playerhealth - 2500;
        if (global.playerhealth >= 2600) guih = global.playerhealth - 2600;
        if (global.playerhealth >= 2700) guih = global.playerhealth - 2700;
        if (global.playerhealth >= 2800) guih = global.playerhealth - 2800;
        if (global.playerhealth >= 2900) guih = global.playerhealth - 2900;
        if (global.playerhealth >= 3000) guih = global.playerhealth - 3000;
    }
}
else
{
    if (global.playerhealth >= 100) guih = global.playerhealth - 100;
    //Number of tanks would be first number plus second number
    //if (global.playerhealth >= 0 + (100 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (0 + (100 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (100 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (100 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (200 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (200 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (300 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (300 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (400 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (400 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (500 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (500 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (600 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (600 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (700 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (700 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (800 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (800 * oControl.mod_etankhealthmult));
    if (global.playerhealth >= 100 + (900 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (900 * oControl.mod_etankhealthmult));
    if (global.etanks > 10)
    {
        if (global.playerhealth >= 100 + (1000 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1000 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1100 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1100 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1200 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1200 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1300 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1300 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1400 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1400 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1500 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1500 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1600 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1600 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1700 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1700 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1800 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1800 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (1900 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (1900 * oControl.mod_etankhealthmult));
        //21
        if (global.playerhealth >= 100 + (2000 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2000 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2100 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2100 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2200 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2200 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2300 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2300 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2400 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2400 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2500 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2500 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2600 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2600 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2700 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2700 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2800 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2800 * oControl.mod_etankhealthmult));
        if (global.playerhealth >= 100 + (2900 * oControl.mod_etankhealthmult)) guih = global.playerhealth - (100 + (2900 * oControl.mod_etankhealthmult));
    }
}

/*
if (guih > 99) guih = 0;
guih = string(guih);
if (string_length(guih) == 1) guih = "0" + guih;
return guih;
*/


if (ceil(guih) == 100) guih = 99 //0;
guih = string(ceil(guih));
if (real(guih) < 10) guih = "0" + guih;
return guih;



/*  ORIGINAL
/// gui_health()
if (global.playerhealth < 0) global.playerhealth = 0;
guih = ceil(global.playerhealth);
if (global.playerhealth >= 100) guih = global.playerhealth - 100;
if (global.playerhealth >= 200) guih = global.playerhealth - 200;
if (global.playerhealth >= 300) guih = global.playerhealth - 300;
if (global.playerhealth >= 400) guih = global.playerhealth - 400;
if (global.playerhealth >= 500) guih = global.playerhealth - 500;
if (global.playerhealth >= 600) guih = global.playerhealth - 600;
if (global.playerhealth >= 700) guih = global.playerhealth - 700;
if (global.playerhealth >= 800) guih = global.playerhealth - 800;
if (global.playerhealth >= 900) guih = global.playerhealth - 900;
if (global.playerhealth >= 1000) guih = global.playerhealth - 1000;
if (ceil(guih) == 100) guih = 0;
guih = string(ceil(guih));
if (real(guih) < 10) guih = "0" + guih;
return guih;
*/
