//septogg_particle_sprite();

var particle = -1;

switch (sprite_index)
{
    case sSeptogg_tlRock1A: 
        particle = sRockPieceA1; 
        break;
    case sSeptogg_tlPlant1NB: 
        particle = sPlantPieceNB1; 
        break;
    case sSeptogg_tlRock2A:
        particle = sRockPieceA2;
        break;
    case sSeptogg_tlPlant2NB: 
        particle = sPlantPieceNB2; 
        break;
    case sSeptogg_tlRock3A: 
    case sSeptogg_Rupee: 
    case sSeptogg_tlGreenCrystals: 
        particle = sRockPieceA3; 
        break;
    case sSeptogg_tlRock3B: 
        particle = sRockPieceB3; 
        break;
    case sSeptogg_tlArea3Breed: 
        particle = sPlantPieceA3Breed; 
        break;
    case sSeptogg_tlRock4A: 
        particle = sRockPieceA4; 
        break;
    case sSeptogg_tlRock4B: 
        particle = sRockPieceB4; 
        break;
    case sSeptogg_tlRock5A: 
        particle = sRockPieceA5; 
        break;
    case sSeptogg_tlRock6A: 
        particle = sRockPieceA6; 
        break;
    case sSeptogg_tlRock7A: 
        particle = sRockPieceA7; 
        break;
    case sSeptogg_tlRock7B: 
        particle = sRockPieceB7; 
        break;
    case sSeptogg_tlBubbles: 
        particle = sBubblesPiece1; 
        break;
    case sSeptogg_tlBubbles2: 
        particle = sBubblesPiece2; 
        break;
    case sSeptogg_tlSurface2: 
        particle = sRockPieceSurface2; 
        break;
    case sSeptogg:
        particle = sDirtPiece; 
        break;
    case sSeptoggTwilight:
        particle = sDirtPieceTwilight; 
        break;
    case sSeptoggNight:
        particle = sDirtPieceNight; 
        break;
}

return(particle);
