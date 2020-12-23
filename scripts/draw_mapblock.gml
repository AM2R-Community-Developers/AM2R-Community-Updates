/// draw_mapblock(x, y, ...parameters)
if (argument8 > 0) {
    switch (argument6) {
        case "1": draw_sprite(sMapBlock, 0, argument0, argument1); break;
        case "2": draw_sprite(sMapBlock, 1, argument0, argument1); break;
        case "3": draw_sprite(sMapBlock, 2, argument0, argument1); break;
        case "4": draw_sprite(sMapBlock, 3, argument0, argument1); break;
    }
    switch (argument9) {
        case "1": draw_sprite(sMapCorner, 0, argument0, argument1); break;
        case "2": draw_sprite(sMapCorner, 1, argument0, argument1); break;
        case "3": draw_sprite(sMapCorner, 2, argument0, argument1); break;
        case "4": draw_sprite(sMapCorner, 3, argument0, argument1); break;
        case "5": draw_sprite(sMapCorner, 4, argument0, argument1); break;
        case "6": draw_sprite(sMapCorner, 5, argument0, argument1); break;
        case "7": draw_sprite(sMapCorner, 6, argument0, argument1); break;
        case "8": draw_sprite(sMapCorner, 7, argument0, argument1); break;
        case "9": draw_sprite(sMapCorner, 8, argument0, argument1); break;
        case "A": draw_sprite(sMapCorner, 9, argument0, argument1); break;
        case "B": draw_sprite(sMapCorner, 10, argument0, argument1); break;
        case "C": draw_sprite(sMapCorner, 11, argument0, argument1); break;
        case "D": draw_sprite(sMapCorner, 12, argument0, argument1); break;
        case "E": draw_sprite(sMapCorner, 13, argument0, argument1); break;
        case "F": draw_sprite(sMapCorner, 14, argument0, argument1); break;
        case "G": draw_sprite(sMapCorner, 15, argument0, argument1); break;
        case "H": draw_sprite(sMapCorner, 16, argument0, argument1); break;
        case "I": draw_sprite(sMapCorner, 17, argument0, argument1); break;
        case "J": draw_sprite(sMapCorner, 18, argument0, argument1); break;
        case "K": draw_sprite(sMapCorner, 19, argument0, argument1); break;
        case "L": draw_sprite(sMapCorner, 20, argument0, argument1); break;
        case "M": draw_sprite(sMapCorner, 21, argument0, argument1); break;
        case "N": draw_sprite(sMapCorner, 22, argument0, argument1); break;
        case "O": draw_sprite(sMapCorner, 23, argument0, argument1); break;
        case "P": draw_sprite(sMapCorner, 24, argument0, argument1); break;
        case "Q": draw_sprite(sMapCorner, 25, argument0, argument1); break;
        case "R": draw_sprite(sMapCorner, 26, argument0, argument1); break;
        case "S": draw_sprite(sMapCorner, 27, argument0, argument1); break;
        case "T": draw_sprite(sMapCorner, 28, argument0, argument1); break;
        case "U": draw_sprite(sMapCorner, 29, argument0, argument1); break;
        case "V": draw_sprite(sMapCorner, 30, argument0, argument1); break;
        case "W": draw_sprite(sMapCorner, 31, argument0, argument1); break;
        case "X": draw_sprite(sMapCorner, 32, argument0, argument1); break;
        case "Y": draw_sprite(sMapCorner, 33, argument0, argument1); break;
        case "Z": draw_sprite(sMapCorner, 34, argument0, argument1); break;
        case "a": draw_sprite(sMapCorner, 35, argument0, argument1); break;
        case "b": draw_sprite(sMapCorner, 36, argument0, argument1); break;
        case "c": draw_sprite(sMapCorner, 37, argument0, argument1); break;
        case "d": draw_sprite(sMapCorner, 38, argument0, argument1); break;
        case "e": draw_sprite(sMapCorner, 39, argument0, argument1); break;
        case "f": draw_sprite(sMapCorner, 40, argument0, argument1); break;
        case "g": draw_sprite(sMapCorner, 41, argument0, argument1); break;
        case "h": draw_sprite(sMapCorner, 42, argument0, argument1); break;
    } // switch (argument9)
    if (argument2 == "1") draw_sprite(sMapHLine, 0, argument0, argument1);
    if (argument4 == "1") draw_sprite(sMapHLine, 0, argument0, argument1 + 7);
    if (argument5 == "1") draw_sprite(sMapVLine, 0, argument0, argument1);
    if (argument3 == "1") draw_sprite(sMapVLine, 0, argument0 + 7, argument1);
    if (argument2 == "2") draw_sprite(sMapHPass, 0, argument0, argument1);
    if (argument4 == "2") draw_sprite(sMapHPass, 0, argument0, argument1 + 7);
    if (argument5 == "2") draw_sprite(sMapVPass, 0, argument0, argument1);
    if (argument3 == "2") draw_sprite(sMapVPass, 0, argument0 + 7, argument1);
    if (argument7 == "1") draw_sprite(sMapSP, 0, argument0, argument1);
    if (argument7 == "2") draw_sprite(sMapSP, 1, argument0, argument1);
    if (argument7 == "3" && argument8 == 1) draw_sprite(sMapSP, 2, argument0, argument1);
    if (argument7 == "3" && argument8 == 2) draw_sprite(sMapSP, 5, argument0, argument1);
    if (argument7 == "4" && argument8 == 1) draw_sprite(sMapSP, 2, argument0, argument1);
    if (argument7 == "4" && argument8 == 2) draw_sprite(sMapSP, 3, argument0, argument1);
    if (argument7 == "5") draw_sprite(sMapSP, 4, argument0, argument1);
    if (argument7 == "U") draw_sprite(sMapSP, 8, argument0, argument1);
    if (argument7 == "D") draw_sprite(sMapSP, 9, argument0, argument1);
    if (argument7 == "L") draw_sprite(sMapSP, 10, argument0, argument1);
    if (argument7 == "R") draw_sprite(sMapSP, 11, argument0, argument1);
    if (argument7 == "H") draw_sprite(sMapSP, 12, argument0, argument1);
    if (argument7 == "V") draw_sprite(sMapSP, 13, argument0, argument1);
    if (argument7 == "C") draw_sprite(sMapSP, 14, argument0, argument1);
    if (argument8 == 10) draw_sprite(sMapSP, 6, argument0, argument1);
    if (argument8 == 11) draw_sprite(sMapSP, 7, argument0, argument1);
} // if (argument8 > 0)
