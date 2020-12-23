if (oControl.palette_number > 6) oControl.palette_number = 0;
if (oControl.palette_number < 0) oControl.palette_number = 6;

if (oControl.palette_number == 0) {
    oControl.shader_on = false;
}
else {
    if (oControl.shader_on == false) {
        oControl.shader_on = true; 
    }           
}
