/// input_init()
// These have to be defined in the macro window.
// Dumb, but okay.
/* 
#macro leftUp 19000
#macro leftDown 19001
#macro leftLeft 19002
#macro leftRight 19003

#macro rightUp 19004
#macro rightDown 19005
#macro rightLeft 19006
#macro rightRight 19007
*/



inputList = ds_list_create();
inputMap = ds_map_create();

keyboard_key_initalize();

gamepadThreshold = 0.4; // Increase this number to set how far the sticks have to be pressed to cause an input. Don't make this higher than 1 lol.
gamepadIndex = -1;




// Face buttons
input_add("Jump",global.opkeybtn_a,global.opjoybtn_a);
input_add("Fire",global.opkeybtn_b,global.opjoybtn_b);
input_add("Morph",global.opkeybtn_x,global.opjoybtn_x);

// Bumpers
input_add("Aim Up",global.opkeybtn_l,global.opjoybtn_l); // Aim up
input_add("Aim Down",global.opkeybtn_l2,global.opjoybtn_l2); // aimlock
input_add("Missile Select",global.opkeybtn_r,global.opjoybtn_r); // Missile select
input_add("Aimlock",global.opkeybtn_r2,global.opjoybtn_r2); // aim down?

// Select/Start
input_add("Select",global.opkeybtn_select,global.opjoybtn_sel); // missile toggle
input_add("Start",global.opkeybtn_start,global.opjoybtn_str);

// Menu forward/back
input_add("Menu1",global.opkeybtn_menu1,global.opjoybtn_menu1);
input_add("Menu2",global.opkeybtn_menu2,global.opjoybtn_menu2);

// Dedicated exit button???
input_add("Exit",global.opkeybtn_exit,gp_face1);

// DPad
input_add("Up",global.opkeybtn_up,global.opjoybtn_padu);
input_add("Down",global.opkeybtn_down,global.opjoybtn_padd);
input_add("Left",global.opkeybtn_left,global.opjoybtn_padl);
input_add("Right",global.opkeybtn_right,global.opjoybtn_padr);



gamepadButtons = -1;
gamepadName = "";

gamepad_button_map();

listSize = ds_list_size(inputList);
//input_load();


/* backup

// Face buttons
input_add("Jump",ord("Z"),gp_face1);
input_add("Fire",ord("X"),gp_face2);
input_add("Morph",vk_lcontrol,gp_face3);

// Bumpers
input_add("Aim Up",vk_lshift,gp_shoulderl); // Aim up
input_add("Aim Down",ord("C"),gp_shoulderlb); // aimlock
input_add("Missile Select",ord("A"),gp_shoulderr); // Missile select
input_add("Aimlock",vk_space,gp_shoulderrb); // aim down?

// Select/Start
input_add("Select",ord("S"),gp_face4); // missile toggle
input_add("Start",vk_enter,gp_start);

// Menu forward/back
input_add("Menu1",ord("Z"),gp_face4);
input_add("Menu2",ord("X"),gp_face1);

// Dedicated exit button???
input_add("Exit",27,gp_face1);

// DPad
input_add("Up",vk_up,gp_padu);
input_add("Down",vk_down,gp_padd);
input_add("Left",vk_left,gp_padl);
input_add("Right",vk_right,gp_padr);

