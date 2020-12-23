/// set_widescreen();
//if(widescreen) {
    //widescreen_space = floor(window_get_width()*240/window_get_height()) - 320; // Get space to set on widescreen?
    
    //if(widescreen_space % 2 == 1) widescreen_space += 1; // fix for odd numbered scales?
    
    // for testing we're just gonna ignore all that lol
    //widescreen_space = 426 - 320;
    
    view_visible[1] = true; // widescreen view
    // So this creates an extra view that displays over view 0
    
    view_wview[1] = view_wview[0]+widescreen_space; // Take view, expand to widescreen res
    view_hview[1] = view_hview[0]; // no duh
    
    view_wport[1] = view_wport[0]-widescreen_space; // e x p a n d?
    view_hport[1] = view_hport[0]; // no duh
    
    view_xview[1] = view_xview[0]-widescreen_space/2; // move backwards to center everything
    view_yview[1] = view_yview[0]; // no duh
    
    //view_xport[1] = view_xport[0]; // this should fix the quakes?
    //view_yport[1] = view_yport[0];
    
    if (!surface_exists(widescreen_surface)) {
       widescreen_surface = surface_create(view_wview[1], view_hview[1]);
    }
    
    view_surface_id[1] = widescreen_surface;
//}
