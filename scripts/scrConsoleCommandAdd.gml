///@description CONSOLE_COMMAND_ADD()
///@param id
///@param "name"
///@param "arg[0]", ...

//adds the strings provided to a map as well as a unique id to make selecting a command to run more efficient and allows for less copy-paste work
//set up for indefinite arguments as each command requires differing numbers of arguments

if(argument_count > 1){
    if(is_string(argument[1])){
        var _name = CommandPrefix + argument[1], _args;
        
        //the first element stores the id of the command
        _args[0] = argument[0];
        
        if(argument_count > 2){
            for(var i = 2; i < argument_count; i++){
            _args[i-1] = argument[i];
            }
        }
        
        if(ds_exists(ConsoleCommands, ds_type_map)){
        ds_map_add(ConsoleCommands, _name, _args);
        }
    }
}
