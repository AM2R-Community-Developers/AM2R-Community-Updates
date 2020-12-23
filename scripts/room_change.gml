/// room_change(target_room, transition_type)
global.targetroom = argument0;
global.transitiontype = argument1;
with (oControl) {

    //show_debug_message("oControl commanded to generate screen_surface")
    event_user(3);
    fadedone = 0;
}
room_goto(rm_transition);
