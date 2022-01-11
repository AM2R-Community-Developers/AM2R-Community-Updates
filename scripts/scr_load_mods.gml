ini_open('modifiers.ini');

oControl.mod_backgroundframes = 60;
oControl.mod_backgroundspeed = 8;

oControl.mod_xcoordinate = 57;
oControl.mod_ycoordinate = 22;

//Header

//HellRun
//oControl.mod_insanitymode = mod_changes(ini_read_real('InsanityMode', 'InsanityMode', 0), 0);

// HELPER SEPTOGGS USED TO BE HERE

//Filters
oControl.mod_color1value1 = ini_read_real('GBOriginalColorFilter', 'CustomColor1Value1', 87);
oControl.mod_color1value2 = ini_read_real('GBOriginalColorFilter', 'CustomColor1Value2', 111);
oControl.mod_color1value3 = ini_read_real('GBOriginalColorFilter', 'CustomColor1Value3', 93);
oControl.mod_color2value1 = ini_read_real('GBOriginalColorFilter', 'CustomColor2Value1', 229);
oControl.mod_color2value2 = ini_read_real('GBOriginalColorFilter', 'CustomColor2Value2', 115);
oControl.mod_color2value3 = ini_read_real('GBOriginalColorFilter', 'CustomColor2Value3', 158);
oControl.mod_color3value1 = ini_read_real('GBOriginalColorFilter', 'CustomColor3Value1', 253);
oControl.mod_color3value2 = ini_read_real('GBOriginalColorFilter', 'CustomColor3Value2', 159);
oControl.mod_color3value3 = ini_read_real('GBOriginalColorFilter', 'CustomColor3Value3', 167);
oControl.mod_color4value1 = ini_read_real('GBOriginalColorFilter', 'CustomColor4Value1', 252);
oControl.mod_color4value2 = ini_read_real('GBOriginalColorFilter', 'CustomColor4Value2', 252);
oControl.mod_color4value3 = ini_read_real('GBOriginalColorFilter', 'CustomColor4Value3', 252);

//LabMonsterCount
oControl.mod_monstersextremecheck = 0;

//Dealt with in Extras Menu Options
oControl.mod_buttonsconfig = 0;
oControl.mod_percentofitems = 1;
oControl.mod_lowhealthwarning = 1;
oControl.mod_earlybaby = 0;
oControl.mod_fusion = 0;
oControl.mod_diffmult = 1;
oControl.msr_fusionsuit = 0;
oControl.mod_suitchangecheat = 0;
oControl.chozomessage = 0;
global.chozo_message_item_id = -1;


//Collected Items On Map
//oControl.mod_collecteditemsmap = 0;

//E-Tank Health Multiplier
oControl.mod_etankhealthmult = mod_changes_2(ini_read_real('ETankHealth', 'Multiplier', 1), 1);

//MissileStartingCount
oControl.mod_Mstartingcount = mod_changes_2(ini_read_real('MissileStartCount', 'StartingCount', 30), 30);


//RandomizerSettings
oControl.mod_purerandombool = 0;
oControl.mod_randomgamebool = 0;
oControl.mod_splitrandom = 0;
oControl.mod_randomitems = 1;
oControl.mod_screwattackrun = mod_changes_2(ini_read_real('RandomizerSettings', 'ScrewAttackRun', 1), 1);
oControl.mod_bombrun = mod_changes_2(ini_read_real('RandomizerSettings', 'BombRun', 1), 1);
oControl.mod_powerbombrun = mod_changes_2(ini_read_real('RandomizerSettings', 'PowerBombsRun', 1), 1);
oControl.mod_bombblocks = 0;

// RandomizerSeed
oControl.mod_usemanualseed = mod_changes(ini_read_real('RandomizerSeed', 'UseManualSeed', 0), 0);
oControl.mod_seed = ini_read_real('RandomizerSeed', 'Seed', 0);

// AlphaGamma
global.mod_alphagammaH = mod_changes(ini_read_real('AlphaGamma', 'Health', 1), 1);
global.mod_alphagammaD = mod_changes(ini_read_real('AlphaGamma', 'Damage', 1), 1);
// Gamma
global.mod_gammaelectric = mod_changes(ini_read_real('Gamma', 'Electric', 40), 40);
// GrabbedGamma
global.mod_grabbedgammaPS = mod_changes(ini_read_real('GrabbedGamma', 'PowerSuit', 0.08), 0.08);
global.mod_grabbedgammaVS = mod_changes(ini_read_real('GrabbedGamma', 'VariaSuit', 0.05), 0.05);
global.mod_grabbedgammaGS = mod_changes(ini_read_real('GrabbedGamma', 'GravitySuit', 0.03), 0.03);
// Zeta
global.mod_zetahealth = mod_changes(ini_read_real('Zeta', 'Health', 300), 300);
global.mod_zetadamage = mod_changes(ini_read_real('Zeta', 'Damage', 50), 50);
global.mod_zetadamageslash1 = mod_changes(ini_read_real('Zeta', 'DamageSlash1', 80), 80);
global.mod_zetadamageslash2 = mod_changes(ini_read_real('Zeta', 'DamageSlash2', 80), 80);
global.mod_zetadamageacid = mod_changes(ini_read_real('Zeta', 'DamageAcid', 40), 40);
// Omega
global.mod_omegahealth = mod_changes(ini_read_real('Omega', 'Health', 320), 320);
global.mod_omegadamagebackmissile = mod_changes_2(ini_read_real('Omega', 'DamageBackMissile', 30), 30);
global.mod_omegadamagebacksuper = mod_changes_2(ini_read_real('Omega', 'DamageBackSuper', 150), 150);
global.mod_omegadamage = mod_changes(ini_read_real('Omega', 'Damage', 100), 100);
global.mod_omegadamagegroundhit = mod_changes(ini_read_real('Omega', 'DamageGroundHit', 10), 10);
global.mod_omegadamageflame = mod_changes(ini_read_real('Omega', 'DamageFlame', 150), 150);
global.mod_omegadamageprojectile = mod_changes(ini_read_real('Omega', 'DamageProjectile', 250), 250);
// AncientGuardian
global.mod_boss1Health = mod_changes(ini_read_real('AncientGuardian', 'Health', 500), 500);
global.mod_boss1Dhead = mod_changes(ini_read_real('AncientGuardian', 'DamageHead', 8), 8);
global.mod_boss1Dbeam = mod_changes(ini_read_real('AncientGuardian', 'DamageBeam', 15), 15);
global.mod_boss1DfireballO = mod_changes(ini_read_real('AncientGuardian', 'DamageFireballOrange', 20), 20);
global.mod_boss1DfireballExOR = mod_changes(ini_read_real('AncientGuardian', 'DamageFireballOrangeExplosionRight', 14), 14);
global.mod_boss1DfireballExOL = mod_changes(ini_read_real('AncientGuardian', 'DamageFireballOrangeExplosionLeft', 14), 14);
global.mod_boss1DfireballG = mod_changes(ini_read_real('AncientGuardian', 'DamageFireballGreen', 16), 16);
global.mod_boss1DfireballExG = mod_changes(ini_read_real('AncientGuardian', 'DamageFireballGreenExplosion', 5), 5);
global.mod_boss1DfireballR = mod_changes(ini_read_real('AncientGuardian', 'DamageFirebalRed', 15), 15);
// Arachnus
global.mod_arachnusdamage = mod_changes(ini_read_real('Arachnus', 'Damage', 20), 20);
global.mod_arachnusfireballorange = mod_changes(ini_read_real('Arachnus', 'DamageFireballOrange', 15), 15);
global.mod_arachnusfirewallorange = mod_changes(ini_read_real('Arachnus', 'DamageFireWallOrange', 15), 15);
global.mod_arachnusfireballgreen = mod_changes(ini_read_real('Arachnus', 'DamageFireballGreen', 15), 15);
global.mod_arachnusfirewallgreen = mod_changes(ini_read_real('Arachnus', 'DamageFireWallGreen', 15), 15);
global.mod_arachnusfireballred = mod_changes(ini_read_real('Arachnus', 'DamageFireballRed', 8), 8);
global.mod_arachnusdamageclaw = mod_changes(ini_read_real('Arachnus', 'DamageClaw', 22), 22);
global.mod_arachnusdamagespikes = mod_changes(ini_read_real('Arachnus', 'DamageSpikes', 10), 10);
// Torizo
global.mod_torizohealthform1 = mod_changes(ini_read_real('Torizo', 'HealthForm1', 200), 200);
global.mod_torizohealthform2 = mod_changes(ini_read_real('Torizo', 'HealthForm2', 240), 240);
global.mod_torizohealthform1hard = mod_changes(ini_read_real('Torizo', 'HealthForm1Hard', 300), 300);
global.mod_torizohealthform2hard = mod_changes(ini_read_real('Torizo', 'HealthForm2Hard', 350), 350);
global.mod_torizondamageform1 = mod_changes(ini_read_real('Torizo', 'DamageForm1', 30), 30);
global.mod_torizondamageform2 = mod_changes(ini_read_real('Torizo', 'DamageForm2', 30), 30);
global.mod_torizodamagefireball = mod_changes(ini_read_real('Torizo', 'DamageFireball', 18), 18);
global.mod_torizodamageslash = mod_changes(ini_read_real('Torizo', 'DamageSlash', 24), 24);
global.mod_torizodamageghost = mod_changes(ini_read_real('Torizo', 'DamageGhost', 18), 18);
// Tester
global.mod_testerHcannon = mod_changes(ini_read_real('Tester', 'HealthCannon', 15), 15);
global.mod_testerHeye = mod_changes(ini_read_real('Tester', 'HealthEye', 100), 100);
global.mod_testerHglass = mod_changes(ini_read_real('Tester', 'HealthGlass', 30), 30);
global.mod_testerHshield = mod_changes(ini_read_real('Tester', 'HealthShield', 200), 200);
global.mod_testerDicespark = mod_changes(ini_read_real('Tester', 'DamageIceSpark', 25), 25);
global.mod_testerDamage = mod_changes(ini_read_real('Tester', 'Damage', 40), 40);
global.mod_testerDshield = mod_changes(ini_read_real('Tester', 'DamageShield', 40), 40);
global.mod_testerDMissile = mod_changes(ini_read_real('Tester', 'DamageMissile', 40), 40);
global.mod_testerDPlasma = mod_changes(ini_read_real('Tester', 'DamagePlasma', 50), 50);
global.mod_testerDspazer = mod_changes(ini_read_real('Tester', 'DamageSpazer', 25), 25);
global.mod_testerDwave = mod_changes(ini_read_real('Tester', 'DamageWave', 35), 35);
// Tank
global.mod_tankHbottom = mod_changes(ini_read_real('Tank', 'HealthBottom', 100), 100);
global.mod_tankHcannon = mod_changes(ini_read_real('Tank', 'HealthCannon', 150), 150);
global.mod_tankHcore = mod_changes(ini_read_real('Tank', 'HealthCore', 125), 125);
global.mod_tankHhead = mod_changes(ini_read_real('Tank', 'HealthHead', 100), 100);
global.mod_tankHshield = mod_changes(ini_read_real('Tank', 'HealthShield', 100), 100);
global.mod_tankDamage = mod_changes(ini_read_real('Tank', 'Damage', 40), 40);
global.mod_tankDprojectile = mod_changes(ini_read_real('Tank', 'DamageProjectile', 24), 24);
// Serris
global.mod_serrisHealth = mod_changes(ini_read_real('Serris', 'Health', 100), 100);
global.mod_serrisHbody = mod_changes(ini_read_real('Serris', 'HealthBody', 10), 10);
global.mod_serrisDamage = mod_changes(ini_read_real('Serris', 'Damage', 50), 50);
global.mod_serrisDprojectile = mod_changes(ini_read_real('Serris', 'DamageBody', 50), 50);
// Genesis
global.mod_genesisHealth = mod_changes(ini_read_real('Genesis', 'Health', 250), 250);
global.mod_genesisDamage = mod_changes(ini_read_real('Genesis', 'Damage', 80), 80);
global.mod_genesisDacid = mod_changes(ini_read_real('Genesis', 'DamageAcid', 30), 30);
global.mod_genesisDslash = mod_changes(ini_read_real('Genesis', 'DamageSlash', 90), 90);
// Monsters
global.mod_monstersHealth = mod_changes(ini_read_real('Monsters', 'Health', 5), 5);
global.mod_monstersDmissiles = mod_changes(ini_read_real('Monsters', 'DamageMissiles', 1), 1);
global.mod_monstersDsuper = mod_changes(ini_read_real('Monsters', 'DamageSuperMissiles', 5), 5);
global.mod_monstersdrainPS = mod_changes(ini_read_real('Monsters', 'DrainPowerSuit', 2), 2);
global.mod_monstersdrainVS = mod_changes(ini_read_real('Monsters', 'DrainVariaSuit', 1), 1);
global.mod_monstersdrainGS = mod_changes(ini_read_real('Monsters', 'DrainGravitySuit', 0.5), 0.5);
// Queen
global.mod_queenHstart = mod_changes(ini_read_real('Queen', 'HealthStart', 600), 600);
global.mod_queenHcorridors = mod_changes(ini_read_real('Queen', 'HealthCorridors', 200), 200);
global.mod_queenHbigroom = mod_changes(ini_read_real('Queen', 'HealthBigRoom', 400), 400);
global.mod_queenHlast = mod_changes(ini_read_real('Queen', 'HealthLast', 300), 300);
global.mod_queenDbody = mod_changes(ini_read_real('Queen', 'DamageBody', 60), 60);
global.mod_queenDhead = mod_changes(ini_read_real('Queen', 'DamageHead', 90), 90);
global.mod_queenHprojectile = mod_changes(ini_read_real('Queen', 'HealthProjectile', 80), 80);
global.mod_queenDprojectile = mod_changes(ini_read_real('Queen', 'DamageProjectile', 100), 100);
global.mod_queenDfireball = mod_changes(ini_read_real('Queen', 'DamageFireball', 250), 250);
global.mod_queenDacid = mod_changes(ini_read_real('Queen', 'DamageAcid', 80), 80);

// PlantDrain
global.mod_plaintdrainPS = mod_changes(ini_read_real('PlantDrain', 'PowerSuit', 0.1), 0.1);
global.mod_plaintdrainVS = mod_changes(ini_read_real('PlantDrain', 'VariaSuit', 0.05), 0.05);
//LavaBurn
global.mod_lavaburnPS = mod_changes(ini_read_real('LavaBurn', 'PowerSuit', 0.1), 0.1);
global.mod_lavaburnVS = mod_changes(ini_read_real('LavaBurn', 'VariaSuit', 0.05), 0.05);
// Spikes
global.mod_spikes1 = mod_changes(ini_read_real('Spikes', 'Damage1', 3), 3);
global.mod_spikes2 = mod_changes(ini_read_real('Spikes', 'Damage2', 7), 7);
global.mod_spikes3 = mod_changes(ini_read_real('Spikes', 'Damage3', 25), 25);
global.mod_spikes4 = mod_changes(ini_read_real('Spikes', 'Damage4', 40), 40);
global.mod_spikesceiling = mod_changes(ini_read_real('Spikes', 'DamageCeiling', 10), 10);
global.mod_spikeszeta = mod_changes(ini_read_real('Spikes', 'DamageZeta', 25), 25);
// RoboMineProjectile
global.mod_robominedamage = mod_changes(ini_read_real('RoboMineProjectile', 'Damage', 30), 30);
// BladeBot
global.mod_bladebotDamage = mod_changes(ini_read_real('BladeBot', 'Damage', 60), 60);

// Core-X
// Arachnus
global.mod_coreArachnusDamage = ini_read_real("CoreXArachnus", "Damage", 15);
global.mod_coreArachnusHealthBlue = ini_read_real("CoreXArachnus", "HealthBlue", 1);
global.mod_coreArachnusHealthYellow = ini_read_real("CoreXArachnus", "HealthYellow", 2);
global.mod_coreArachnusHealthRed = ini_read_real("CoreXArachnus", "HealthRed", 2);

// Torizo
global.mod_coreTorizoDamage = ini_read_real("CoreXTorizo", "Damage", 25);
global.mod_coreTorizoHealthBlue = ini_read_real("CoreXTorizo", "HealthBlue", 2);
global.mod_coreTorizoHealthYellow = ini_read_real("CoreXTorizo", "HealthYellow", 2);
global.mod_coreTorizoHealthRed = ini_read_real("CoreXTorizo", "HealthRed", 2);

// Genesis
global.mod_coreGenesisDamage = ini_read_real("CoreXGenesis", "Damage", 40);
global.mod_coreGenesisHealthBlue = ini_read_real("CoreXGenesis", "HealthBlue", 2);
global.mod_coreGenesisHealthYellow = ini_read_real("CoreXGenesis", "HealthYellow", 3);
global.mod_coreGenesisHealthRed = ini_read_real("CoreXGenesis", "HealthRed", 3);

// Eris
global.mod_coreErisDamage = ini_read_real("CoreXSerris", "Damage", 65);
global.mod_coreErisHealthBlue = ini_read_real("CoreXSerris", "HealthBlue", 3);
global.mod_coreErisHealthYellow = ini_read_real("CoreXSerris", "HealthYellow", 4);
global.mod_coreErisHealthRed = ini_read_real("CoreXSerris", "HealthRed", 3);

// Translator Debug Room
// oControl.mod_debugRoom = ini_read_real('TranslatorDebug', 'Enable', 0);

// Close ini file
ini_close();
