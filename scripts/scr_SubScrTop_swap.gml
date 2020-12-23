
if (global.stanks > 0 && global.ptanks > 0) return bg_SubScrTop;
else if (global.stanks > 0) return bg_SubScrTop_SM;
else if (global.ptanks > 0) return bg_SubScrTop_PB;
else return bg_SubScrTop_M;

