///d3d_set_camera()

var distance = point_distance_3d(0, 25 /*30*/, 0, 0, 0, 0); // y1 changes screen curvature, smaller = more curvature.
var frustumWidth  = 100/2.23   //2.5;
var frustumHeight = 75/2.23    //2.5;
    
    
var r = window_get_width() / window_get_height(); // Aspect ratio.
var frustumHeight = max(frustumHeight, frustumWidth / r); // The height of the region of space in the modeled world that will appear on the screen.
var fov = 2.0 * radtodeg(arctan(frustumHeight * 0.5 / distance)); // Field of view.
d3d_set_projection_perspective(0, 0, window_get_width(), window_get_height(), 0); // Camera lens size.
d3d_set_projection_ext(0,distance,0,0,0,0,0,0,1,fov,r,1,32000); // Camera position and direction.
