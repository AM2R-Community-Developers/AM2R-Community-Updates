///Relocate Septoggs?
//Septoggs cannot be destroyed. GM will throw an error

if (global.item[2] == 1 || global.item[4] == 1 || global.item[6] == 1 || global.item[8] == 1) return true;
else return false;
