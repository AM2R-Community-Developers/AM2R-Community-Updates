
var temp_seed = random_get_seed();
randomize();

var t_list = ds_list_create();
ds_list_add(t_list, 1, 2, 3, 4, 5);
ds_list_shuffle(t_list);


var temp = ds_list_find_value(t_list, ds_list_size(t_list) - 1);

switch (temp)
{
    case 1:
    return sItemBall1;
    break;
    case 2:
    return sItemBall2;
    break;
    case 3:
    return sItemBall3;
    break;
    case 4:
    return sItemBall4;
    break;
    case 5:
    return sItemBall5;
    break;
    case 6:
    return sItemBall6;
    break;
    default:
    return sItemBall1;
    break;   
}



random_set_seed(temp_seed);
