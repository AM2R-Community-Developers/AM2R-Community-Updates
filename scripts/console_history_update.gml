///@description scrConsoleCommandUpdate()
///@param _string

var _string = argument[0];

if(string_length(_string) > 0){

if(ds_exists(ConsoleHistory, ds_type_list)){
    ds_list_add(ConsoleHistory, _string);
    ConsoleViewLine = ds_list_size(ConsoleHistory);
    }
}
