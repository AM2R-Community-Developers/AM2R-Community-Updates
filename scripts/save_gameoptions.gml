/// save_gameoptions()
ini_open("config.ini");
ini_write_real("Screen", "Fullscreen", global.opfullscreen);
ini_write_real("Screen", "Scale", global.opscale);
ini_write_real("Screen", "VSync", global.opvsync);
ini_write_real("Screen", "Language", global.currentlanguage);
ini_write_real("Screen", "ShowHUD", global.opshowhud);
ini_write_real("Screen", "ShowHUDMap", global.ophudshowmap);
ini_write_real("Screen", "ShowHUDCounter", global.ophudshowmetrcount);
ini_write_real("Screen", "ShowHints", global.ophudshowhints);
ini_write_real("Screen", "ShowMedalMessage", global.ophudshowmedalmsg);
ini_write_real("Screen", "ShowLogMessage", global.ophudshowlogmsg);
ini_write_real("Screen", "LowEnergyNotificationStyle", global.oplowhpstyle);
ini_write_real("Sound", "SoundVolume", global.opsoundvolume);
ini_write_real("Sound", "MusicVolume", global.opmusicvolume);
ini_write_real("Sound", "SoundEffects", global.opsoundfx);
ini_write_real("Control", "EnableJoystick", global.openablejoy);
ini_write_real("Control", "JoystickDeadzone", global.opdeadzone);
ini_write_real("Control", "JoystickID", global.opjoyid);
ini_write_real("Control", "JoystickXAxis", global.opjoybtn_xax);
ini_write_real("Control", "JoystickYAxis", global.opjoybtn_yax);
ini_write_real("Control", "JoystickButtonA", global.opjoybtn_a);
ini_write_real("Control", "JoystickButtonB", global.opjoybtn_b);
ini_write_real("Control", "JoystickButtonX", global.opjoybtn_x);
ini_write_real("Control", "JoystickButtonL", global.opjoybtn_l);
ini_write_real("Control", "JoystickButtonL2", global.opjoybtn_l2);
ini_write_real("Control", "JoystickButtonR", global.opjoybtn_r);
ini_write_real("Control", "JoystickButtonR2", global.opjoybtn_r2);
ini_write_real("Control", "JoystickButtonSelect", global.opjoybtn_sel);
ini_write_real("Control", "JoystickButtonStart", global.opjoybtn_str);
ini_write_real("Control", "JoystickButtonMenuOK", global.opjoybtn_menu1);
ini_write_real("Control", "JoystickButtonMenuCancel", global.opjoybtn_menu2);
ini_write_real("Control", "EnableXBJoypad", global.opxjoyenable);
ini_write_real("Control", "XBJoypadDeadzone", global.opxjoydz);
ini_write_real("Control", "XBJoypadVibration", global.opxjoyvib);
ini_write_real("Control", "XBJoypadButtonA", global.opxjoybtn_a);
ini_write_real("Control", "XBJoypadButtonB", global.opxjoybtn_b);
ini_write_real("Control", "XBJoypadButtonX", global.opxjoybtn_x);
ini_write_real("Control", "XBJoypadButtonL", global.opxjoybtn_l);
ini_write_real("Control", "XBJoypadButtonL2", global.opxjoybtn_l2);
ini_write_real("Control", "XBJoypadButtonR", global.opxjoybtn_r);
ini_write_real("Control", "XBJoypadButtonR2", global.opxjoybtn_r2);
ini_write_real("Control", "XBJoypadButtonSelect", global.opxjoybtn_sel);
ini_write_real("Control", "XBJoypadButtonStart", global.opxjoybtn_str);
ini_write_real("Control", "XBJoypadButtonMenuOK", global.opxjoybtn_menu1);
ini_write_real("Control", "XBJoypadButtonMenuCancel", global.opxjoybtn_menu2);
ini_write_real("Control", "KeyboardButtonUp", global.opkeybtn_up);
ini_write_real("Control", "KeyboardButtonDown", global.opkeybtn_down);
ini_write_real("Control", "KeyboardButtonLeft", global.opkeybtn_left);
ini_write_real("Control", "KeyboardButtonRight", global.opkeybtn_right);
ini_write_real("Control", "KeyboardButtonA", global.opkeybtn_a);
ini_write_real("Control", "KeyboardButtonB", global.opkeybtn_b);
ini_write_real("Control", "KeyboardButtonX", global.opkeybtn_x);
ini_write_real("Control", "KeyboardButtonL", global.opkeybtn_l);
ini_write_real("Control", "KeyboardButtonL2", global.opkeybtn_l2);
ini_write_real("Control", "KeyboardButtonR", global.opkeybtn_r);
ini_write_real("Control", "KeyboardButtonR2", global.opkeybtn_r2);
ini_write_real("Control", "KeyboardButtonSelect", global.opkeybtn_select);
ini_write_real("Control", "KeyboardButtonStart", global.opkeybtn_start);
ini_write_real("Control", "KeyboardButtonMenuOK", global.opkeybtn_menu1);
ini_write_real("Control", "KeyboardButtonMenuCancel", global.opkeybtn_menu2);
ini_write_real("Control", "AimStyle", global.opaimstyle);
ini_write_real("Control", "MissileStyle", global.opmslstyle);
ini_write_real("Control", "MorphStyle", global.opmrpstyle);
ini_write_real("Control", "SpiderballStyle", global.opspdstyle);
ini_write_real("Control", "AnalogWalk", global.opanalogwalk);
ini_write_real("Control", "AutoClimb", global.opautoclimb);
ini_write_real("Control", "AutoMorph", global.opautomorph);
ini_write_real("Control", "EnableExitButton", global.opexitkeyenable);
ini_write_real("Control", "KeyboardButtonExit", global.opkeybtn_exit);
ini_write_real("Control", "JoystickButtonExit", global.opjoybtn_exit);
ini_write_real("Control", "XBJoypadButtonExit", global.opxjoybtn_exit);

// Extras
ini_write_real("Extras", "Controller", oControl.mod_buttonsconfig);
ini_write_real("Extras", "EarlyBaby", oControl.mod_earlybaby);
ini_write_real("Extras", "LowHealthWarning", oControl.mod_lowhealthwarning);
ini_write_real("Extras", "FusionSuitMSR", oControl.msr_fusionsuit);
ini_write_real("Extras", "ExtremeLabMonsters", oControl.mod_monstersextremecheck);
ini_write_real("Extras", "DisplayIGT", oControl.mod_IGT);

// Android
ini_write_real("Control", "JoystickDPadUp", global.opjoybtn_padu);
ini_write_real("Control", "JoystickDPadDown", global.opjoybtn_padd);
ini_write_real("Control", "JoystickDPadLeft", global.opjoybtn_padl);
ini_write_real("Control", "JoystickDPadRight", global.opjoybtn_padr);
ini_write_real("Control", "JoystickType", global.opanalog_stick);
ini_write_real("Control", "JoystickInvert", global.opanalog_invert);
ini_write_real("Control", "CompatibilityMode", global.compatibilitymode);

ini_write_real("Control", "RebindDPad", global.dpad_rebind);

ini_write_real("Control", "TouchScale", oControl.touch_scale);

// 1.5.1 sensitivity mode
ini_write_real("Screen", "SensitivityMode", global.sensitivitymode);

// Widescreen toggle
ini_write_real("Screen", "Widescreen", global.widescreen_enabled);

// Gameplay Menu
ini_write_real("GameplayMenu", "InsanityMode", oControl.mod_insanitymode);

// Remember setting
ini_write_real("Extras", "MapItemsCollected", oControl.mod_collecteditemsmap);

ini_close();
