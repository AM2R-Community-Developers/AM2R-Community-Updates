// Activate Shader.
shader_set(shGameBoy);

//  Apply Palette Parameters.
switch (oControl.palette_number) {
    case 1:                 // Olive //
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 31, 31, 31);      //  Setting color 1
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 77, 83, 60);     //  Setting color 2
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 139, 149, 109);   //  Setting color 3
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 196, 207, 161);   //  Setting color 4
        break;
    case 2:                 // Blue //
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 31, 31, 31); //53, 43, 49);      //  Setting color 1
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 60, 73, 83); //75, 109, 133);    //  Setting color 2
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 109, 132, 149); //150, 207, 133);   //  Setting color 3
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 162, 188, 207); //247, 247, 214);   //  Setting color 4
        break;
    case 3:                 // Black & White //
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 31, 31, 31); //7, 7, 7);         //  Setting color 1
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 72, 72, 72); //106, 106, 106);   //  Setting color 2
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 130, 130, 130); // 192, 192, 192);   //  Setting color 3
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 185, 185, 185); //252, 252, 252);   //  Setting color 4
        break;                
    case 4:                 // Virtualtroid //
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 0, 0, 0);      //  Setting color 1
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 101, 0, 0);    //  Setting color 2
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 188, 0, 0);   //  Setting color 3
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 255, 0, 0);   //  Setting color 4
        break;        
    case 5:                 // Green //  
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 11, 25, 32);      //  Setting color 1
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 47, 105, 87);     //  Setting color 2
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 134, 194, 112);   //  Setting color 3
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 245, 250, 239);   //  Setting color 4
        break;
    case 6:                 // Custom //
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), oControl.mod_color1value1, oControl.mod_color1value2, oControl.mod_color1value3);   //  Setting color 1
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), oControl.mod_color2value1, oControl.mod_color2value2, oControl.mod_color2value3);   //  Setting color 2
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), oControl.mod_color3value1, oControl.mod_color3value2, oControl.mod_color3value3);   //  Setting color 3
        shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), oControl.mod_color4value1, oControl.mod_color4value2, oControl.mod_color4value3);   //  Setting color 4
        break;
}
