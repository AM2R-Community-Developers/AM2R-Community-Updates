global.CONSOLE_KEY = vk_tab;
global.CONSOLE = false;

CommandPrefix = "!";
WriteName = 0; //<--an int that acts as more of a boolean in function. It tracks how many spaces are used so the code can easily destinguish command from argument in real time
CommandName = "";
CommandArg = "";

//vallid characters determnines which keys on the keyboard the console will recognize
ConsoleVallidChars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ!_";
VallidCharCount = string_length(ConsoleVallidChars);
ConsoleKeys[0] = -1;

//i starts at one here because strings aren't 0 indexed in gml....just why?
for(var i = 1; i <= VallidCharCount; i++){
ConsoleKeys[i-1] = ord(string_char_at(ConsoleVallidChars, i));
}

//the text the user is currently writing
ConsoleEntry = "";

//past entries
ConsoleHistory = ds_list_create();
ConsoleLineCount = 5; //the maximum number of past entries to draw on screen at a time
ConsoleViewLine = 0; //the currently viewed past entry

//easy storing of command names and their arguments
ConsoleCommands = ds_map_create();

enum COMMANDS{
HELP,
DEBUG
}

console_command_add(COMMANDS.HELP, "help");
console_command_add(COMMANDS.DEBUG, "debug", "true", "false");
