//Run this script in any step event. no extra code is required for it to run as intended

//toggle the console
if(keyboard_check_pressed(global.CONSOLE_KEY)){
    global.CONSOLE = !global.CONSOLE;
    keyboard_lastchar = "";
    keyboard_lastkey = -1;
}

//run the console
if(global.CONSOLE){
    
    if(keyboard_lastkey != -1){
        switch(keyboard_lastkey){
        
            //console controls
            //ConsoleViewLine is when the chat history is drawn on screen. It is drawn in descending order, thus ViewLine defaults to the last entry
            case vk_up :
                if(ConsoleViewLine > 0){
                    ConsoleViewLine--;
                }
            break;
            
            case vk_down:
                if(ds_exists(ConsoleHistory, ds_type_list)){
                    if(ConsoleViewLine < ds_list_size(ConsoleHistory)){
                        ConsoleViewLine++;
                    }
                }
            break;
            
            //space is super important because it decides where a command ends and an argument begins thus it's not a normal vallid entry
            case vk_backspace :
                if(ord(string_char_at(ConsoleEntry, string_length(ConsoleEntry))) == vk_space){
                    WriteName--;
                    
                }else{
                    if(WriteName == 0){
                        CommandName = string_delete(CommandName, string_length(CommandName), 1);
                    }else{
                        CommandArg = string_delete(CommandArg, string_length(CommandArg), 1);
                    }
                }
                
                ConsoleEntry = string_delete(ConsoleEntry, string_length(ConsoleEntry), 1);
            break;
            
            case vk_space :
                WriteName++;
                ConsoleEntry += " ";
                keyboard_lastkey = -1;
            break;
            
            //as ENTER is commonly used for the pause menu, I recommend disabling whatever input collection you have before running this
            //I made that easy with a simple global variable that toggles the console
            case vk_enter :
                
                console_command_run();
                
                console_history_update(ConsoleEntry);
                ConsoleEntry = "";
                CommandName = "";
                CommandArg = "";
                WriteName = 0;
            break;
            
            
            //adds characters to the console string if vallid keys are pressed
            default:
                var i = 0, _keyFound = false;
                
                //check if the key is vallid
                while( i < VallidCharCount && _keyFound == false){
                    if(ConsoleKeys[i] == keyboard_lastkey){
                        _keyFound = true;
                    }
                    i++;
                }
                
                //if vallid, add the character to our strings
                if(_keyFound){
                    ConsoleEntry += keyboard_lastchar;
                    
                    if(WriteName == 0){
                        CommandName += keyboard_lastchar;
                    }else{
                        CommandArg += keyboard_lastchar;
                    }
                }
            break;
        }
        
        keyboard_lastkey = -1;
    }
}
