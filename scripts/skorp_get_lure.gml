/// skorp_get_lure(sprite);
var spr = argument0;
var area = string_char_at(room_get_name(room), 5) + string_char_at(room_get_name(room), 6);

switch area {
    case "6a": {
        return asset_get_index(sprite_get_name(spr) + "A6");
        break;
    }
    case "6b": {
        return asset_get_index(sprite_get_name(spr) + "A6b");
        break;
    }
    default: {
        return spr;
        break;
    }
}
