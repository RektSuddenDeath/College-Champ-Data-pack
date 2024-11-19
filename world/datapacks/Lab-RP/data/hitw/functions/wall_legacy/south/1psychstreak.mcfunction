scoreboard players set movementreq hitw_wall 29
scoreboard players set wallcount hitw_wall 1
scoreboard players set nextwallmoves hitw_wall 8
function hitw:wall/south/random
schedule function hitw:wall/west/random 1t

scoreboard players set west hitw_psych 1