///is_breakable_block(id);
//Returns if the solid is of the breakable type.

var breakable = false;

switch (argument0)
{
    case oBlockShoot:
    case oBlockShootChain:
    case oBlockBomb:
    case oBlockBombChain:
    case oBlockBombItem:
    case oBlockScrew:
    case oBlockPBomb:
    case oBlockPBombChain:
    case oBlockMissile:
    case oBlockSMissile:
    case oBlockSpeed:
    case oBlockSand:
    case oBlockStep:
    case oDestroyedBlock:
        breakable = true;
}
 
return(breakable);
