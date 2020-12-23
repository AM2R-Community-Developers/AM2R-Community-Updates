var inputName = argument[0];
var inputKeyboard = argument[1];
var inputGamepad = argument[2];



inputNumber = ds_list_size(inputList);
// 0 = kb, 1 =gp
inputArray[inputNumber,0] = inputKeyboard;
inputArray[inputNumber,1] = inputGamepad;

ds_list_add(inputList,inputName);
ds_map_add(inputMap,inputName,inputNumber);
