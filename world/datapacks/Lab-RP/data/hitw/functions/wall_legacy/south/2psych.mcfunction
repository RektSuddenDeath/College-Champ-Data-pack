scoreboard players set movementreq hitw_wall 21

function hitw:wall/south/random
schedule function hitw:wall/north/random 1t
schedule function hitw:wall/west/random 2t

scoreboard players set north hitw_psych 1
scoreboard players set west hitw_psych 1