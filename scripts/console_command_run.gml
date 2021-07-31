//check if the command prefix is present
if(string_char_at(ConsoleEntry, 1) == CommandPrefix){
    
    //check the command entry for a vallid command name
    if(ds_exists(ConsoleCommands, ds_type_map)){
        var _command = ds_map_find_value(ConsoleCommands, CommandName);
        
        if(is_undefined(_command)){
            //if the prefix was used but the command wasn't found, the console will yell at you...very loudly
            ConsoleEntry = "COMMAND : '" + CommandName + "' DOES NOT EXIST!!!";
            
        }else{
            switch(_command[0]){
                
                //Help command simply lists all commands in the ConsoleCommands map, including their arguments if they have any
                //output set as : "command (arg1 / arg2)"
                //these will be listed as new lines in the ConsoleHistory list. I provided an easy means of scrolling the history with the arrow keys
                //recommend disabling input collection when using this and/or switching the controls around
                case COMMANDS.HELP :
                    
                    if(ds_exists(ConsoleCommands, ds_type_map)){
                        var _commandKey = ds_map_find_first(ConsoleCommands);
                        var _commandArray = ds_map_find_value(ConsoleCommands, _commandKey);
                        var _commandString, _arrayLength;
                        
                        do{
                            //unpack the command array
                            _commandArray =ds_map_find_value(ConsoleCommands, _commandKey);
                            _arrayLength = array_length_1d(_commandArray);
                            
                            //add the command name to the string
                            _commandString = _commandKey;
                            
                            if(_arrayLength > 1){ //add the arguments into the string
                                _commandString += " (";
                                for(var i = 1; i < _arrayLength; i++){
                                    _commandString += _commandArray[i]
                                    
                                    if(i < _arrayLength-1){
                                        _commandString += " / ";
                                    }
                                }
                                _commandString += ")";
                            }
                            
                            //write the command to the console
                            console_history_update(_commandString);
                            
                            _commandKey = ds_map_find_next(ConsoleCommands, _commandKey);
                            
                        }until(is_undefined(_commandKey))
                    }
                    
                    //clear the entry so /help doesn't appear twice
                    ConsoleEntry = "";
                    
                break;
                
                //included as an example of a debug toggle
                case COMMANDS.DEBUG :
                    /*if(CommandArg == _command[1]){ global.DEBUG = true;}
                    if(CommandArg == _command[2]){ global.DEBUG = false;}
                    if(CommandArg == ""){ global.DEBUG = !global.DEBUG;}*/
                    
                break;
                
                default : break;
            }
        }
        
    }
}
