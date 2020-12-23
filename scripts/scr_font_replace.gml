///scr_font_replace(variableName, name, size, bold, italic, first, last)
if (IS_9999) {
    var reducedsize = ceil(argument2 - ((25 / 100) * argument2));
    // comment the line below if on 1763.
    //variable_global_set(argument0, font_add(argument1, reducedsize, argument3, argument4, argument5, argument6));
}
else {
    // 1.4.1763 doesn't have variable_* functions afaik... I am sorry.
    var fontindex = -1;
    switch (argument0) {
        case "fontGUI":        fontindex = fontGUI;        break;
        case "fontGUI2":       fontindex = fontGUI2;       break;
        case "fontMenuSmall":  fontindex = fontMenuSmall;  break;
        case "fontMenuTiny":   fontindex = fontMenuTiny;   break;
        case "fontMenuSmall2": fontindex = fontMenuSmall2; break;
        case "fontSubScr":     fontindex = fontSubScr;     break;
        default:      show_error("Invalid variable name.", true);
    }
    
    // comment the line below if on 9999.
    font_replace(fontindex, argument1, argument2, argument3, argument4, argument5, argument6);
}
