/// goto_saveroom()
global.save_room = get_integer("Go to Save Room...", 0);
set_start_location();
room_goto(global.start_room);
