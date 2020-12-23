var padID = argument0;
var buttonID = argument1;

switch (buttonID) {
    case "": {
        return 0;
    }
    case leftUp: {
        return (gamepad_axis_value(padID,gp_axislv) < -oControl.gamepadThreshold);
    }
    break;
    
    case leftDown: {
        return (gamepad_axis_value(padID,gp_axislv) > oControl.gamepadThreshold);
    }
    break;
    
    case leftLeft: {
    
        return (gamepad_axis_value(padID,gp_axislh) < -oControl.gamepadThreshold);
    }
    break;
    
    case leftRight: {
        return (gamepad_axis_value(padID,gp_axislh) > oControl.gamepadThreshold);
    }
    break;
    
    case rightUp: {
        return (gamepad_axis_value(padID,gp_axisrv) < -oControl.gamepadThreshold);
    }
    break;
    
    case rightDown: {
        return (gamepad_axis_value(padID,gp_axisrv) > oControl.gamepadThreshold);
    }
    break;
    
    case rightLeft: {
        return (gamepad_axis_value(padID,gp_axisrh) < -oControl.gamepadThreshold);
    }
    break;
    
    case rightRight: {
        return (gamepad_axis_value(padID,gp_axisrh) > oControl.gamepadThreshold);
    }
    break;
    
    default: {
        return gamepad_button_check(padID,buttonID);
    }
    break;
}

