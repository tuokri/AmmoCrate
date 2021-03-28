class ACNorthPawn extends RONorthPawn;

simulated event PreBeginPlay()
{
    PawnHandlerClass = class'ROPawnHandler';

    super.PreBeginPlay();
}