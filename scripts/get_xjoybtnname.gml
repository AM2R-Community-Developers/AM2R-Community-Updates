/// get_xjoybtnname(gamepad_button)
switch (oControl.mod_buttonsconfig)
{
    case 1: //PS
        return scr_controller_ps(argument0)
        break;
    case 2:
    case 3: //N
        return scr_controller_N(argument0);
        break;
    default:
        return scr_controller_xbox(argument0);
        break;
}
