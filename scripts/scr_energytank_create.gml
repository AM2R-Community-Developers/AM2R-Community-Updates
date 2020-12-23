text1 = get_text("Items", "EnergyTank");
text2 = get_text("Items", "EnergyTank_Text");
btn1_name = "";

if (string_count("|", text2) > 0) {
    p_text1 = string_split(text2, 0, "|");
    p_text2 = string_split(text2, 1, "|");
    
    text2 = p_text1 + string(100*oControl.mod_etankhealthmult) + p_text2;
}
