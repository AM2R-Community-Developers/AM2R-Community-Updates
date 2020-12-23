if (ds_exists(gamepadButtons, ds_type_map)) {
   ds_map_clear(gamepadButtons);
}

gamepadButtons = ds_map_create();

var gamepadType = "Standard";

if (string_contains(gamepadName, "Sony")) {
    gamepadType = "Sony";
}

if (string_pos(gamepadName, "Nintendo")) {
    gamepadType = "Nintendo";
}

/*    Disabled, because by defualt gamepads will show XBox inputs instead of nothingness
if (string_pos(gamepadName,"Microsoft") || string_pos(gamepadName,"XBox")) || gamepadIndex < 4 {
gamepadType = "XBox";
}
*/

gamepadButtons[? leftUp] = "L Up";
gamepadButtons[? leftDown] = "L Down";
gamepadButtons[? leftLeft] = "L Left";
gamepadButtons[? leftRight] = "L Right";

gamepadButtons[? rightUp] = "R Up";
gamepadButtons[? rightDown] = "R Down";
gamepadButtons[? rightLeft] = "R Left";
gamepadButtons[? rightRight] = "R Right";

switch (gamepadType) {
    case "Sony": {
        gamepadButtons[? gp_face1] = "Cross";
        gamepadButtons[? gp_face2] = "Circle";
        gamepadButtons[? gp_face3] = "Square";
        gamepadButtons[? gp_face4] = "Triangle";
        gamepadButtons[? gp_padu] = "Up";
        gamepadButtons[? gp_padd] = "Down";
        gamepadButtons[? gp_padl] = "Left";
        gamepadButtons[? gp_padr] = "Right";
        gamepadButtons[? gp_shoulderl] = "L1";
        gamepadButtons[? gp_shoulderr] = "R1";
        gamepadButtons[? gp_shoulderlb] = "L2";
        gamepadButtons[? gp_shoulderrb] = "R2";
        gamepadButtons[? gp_select] = "Share";
        gamepadButtons[? gp_start] = "Options";
        gamepadButtons[? gp_stickl] = "L3";
        gamepadButtons[? gp_stickr] = "R3";
   }
   break;

   case "Nintendo": {
        gamepadButtons[? gp_face1] = "B";
        gamepadButtons[? gp_face2] = "A";
        gamepadButtons[? gp_face3] = "Y";
        gamepadButtons[? gp_face4] = "X";
        gamepadButtons[? gp_padu] = "Up";
        gamepadButtons[? gp_padd] = "Down";
        gamepadButtons[? gp_padl] = "Left";
        gamepadButtons[? gp_padr] = "Right";
        gamepadButtons[? gp_shoulderl] = "L";
        gamepadButtons[? gp_shoulderr] = "R";
        gamepadButtons[? gp_shoulderlb] = "SL";
        gamepadButtons[? gp_shoulderrb] = "SR";
        gamepadButtons[? gp_select] = "-";
        gamepadButtons[? gp_start] = "+";
        gamepadButtons[? gp_stickl] = "LS";
        gamepadButtons[? gp_stickr] = "RS";
   }
   break;

   default: {
        gamepadButtons[? gp_face1] = "A";
        gamepadButtons[? gp_face2] = "B";
        gamepadButtons[? gp_face3] = "X";
        gamepadButtons[? gp_face4] = "Y";
        gamepadButtons[? gp_padu] = "Up";
        gamepadButtons[? gp_padd] = "Down";
        gamepadButtons[? gp_padl] = "Left";
        gamepadButtons[? gp_padr] = "Right";
        gamepadButtons[? gp_shoulderl] = "LB";
        gamepadButtons[? gp_shoulderr] = "RB";
        gamepadButtons[? gp_shoulderlb] = "LT";
        gamepadButtons[? gp_shoulderrb] = "RT";
        gamepadButtons[? gp_select] = "Select";
        gamepadButtons[? gp_start] = "Start";
        gamepadButtons[? gp_stickl] = "LS";
        gamepadButtons[? gp_stickr] = "RS";
    }
    break;
}

