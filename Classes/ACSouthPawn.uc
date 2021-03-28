class ACSouthPawn extends ROSouthPawn;

simulated event PreBeginPlay()
{
    PawnHandlerClass = class'ROPawnHandler';

    super.PreBeginPlay();
}