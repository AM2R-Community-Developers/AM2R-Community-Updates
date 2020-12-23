//baby_septogg_sprite(x, y);

var tile = get_ground_tile(argument0, argument1),
    type = -1;

if(tile != -1)
{
    switch (tile_get_background(tile))
    {
        case tlRock1AN: 
            type = sSeptogg_tlRock1A; 
            break;
        case tlPlant1NB: 
            type = sSeptogg_tlPlant1NB; 
            break;
        case tlRock2NB:
            type = sSeptogg_tlRock2A;
            break;
        case tlPlant2NB: 
            type = sSeptogg_tlPlant2NB; 
            break;
        case tlRock3A: 
            var room_num = real(string(string_char_at(room_get_name(room), 7) + string_char_at(room_get_name(room), 8)))
            if(room_num >= 16 and room_num <= 23) {
                if(irandom(99) < 15)
                    type = sSeptogg_Rupee; 
                else 
                    type = sSeptogg_tlGreenCrystals; 
            }
            else
                type = sSeptogg_tlRock3A; 
            break;
        case tlRock3B: 
            type = sSeptogg_tlRock3B; 
            break;
        case tlArea3Breed: 
            type = sSeptogg_tlArea3Breed; 
            break;
        case tlRock4A: 
            type = sSeptogg_tlRock4A; 
            break;
        case tlRock4B: 
            type = sSeptogg_tlRock4B; 
            break;
        case tlRock5A: 
            type = sSeptogg_tlRock5A; 
            break;
        case tlRock6A: 
            type = sSeptogg_tlRock6A; 
            break;
        case tlRock7A: 
            type = sSeptogg_tlRock7A; 
            break;
        case tlRock7B: 
            type = sSeptogg_tlRock7B; 
            break;
        case tlBubbles: 
            type = sSeptogg_tlBubbles; 
            break;
        case tlBubbles2: 
            type = sSeptogg_tlBubbles2; 
            break;
        case tlSurface2: 
            type = sSeptogg_tlSurface2; 
            break;
        case tlSurface1:
            type = sSeptogg; 
            break;
        case tlSurface1Twilight:
            type = sSeptoggTwilight; 
            break;
        case tlSurface1Night:
            type = sSeptoggNight; 
            break;
    }
}

return(type);
