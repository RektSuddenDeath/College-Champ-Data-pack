

scoreboard players add currentwallmoves hitw_wall 1
scoreboard players remove movementreq hitw_wall 1
scoreboard players remove nextwallmoves hitw_wall 1
execute if score movementreq hitw_wall matches 0 run scoreboard players set currentwallmoves hitw_wall 0

execute if score currentwallmoves hitw_wall matches 4 if score east hitw_psych matches 1 run function hitw:wall/psych/east
execute if score currentwallmoves hitw_wall matches 4 if score west hitw_psych matches 1 run function hitw:wall/psych/west
execute if score currentwallmoves hitw_wall matches 4 if score north hitw_psych matches 1 run function hitw:wall/psych/north
execute if score currentwallmoves hitw_wall matches 4 if score south hitw_psych matches 1 run function hitw:wall/psych/south

execute as @e[type=armor_stand,tag=north] run function hitw:wall/north/move
execute as @e[type=armor_stand,tag=south] run function hitw:wall/south/move
execute as @e[type=armor_stand,tag=east] run function hitw:wall/east/move
execute as @e[type=armor_stand,tag=west] run function hitw:wall/west/move

schedule function hitw:wall/clear2 2t


execute if score nextwallmoves hitw_wall matches 0 if score wallcount hitw_wall matches 1.. if score direction hitw_wall matches 0 run function hitw:wall/north/random
execute if score nextwallmoves hitw_wall matches 0 if score wallcount hitw_wall matches 1.. if score direction hitw_wall matches 1 run function hitw:wall/south/random
execute if score nextwallmoves hitw_wall matches 0 if score wallcount hitw_wall matches 1.. if score direction hitw_wall matches 2 run function hitw:wall/west/random
execute if score nextwallmoves hitw_wall matches 0 if score wallcount hitw_wall matches 1.. if score direction hitw_wall matches 3 run function hitw:wall/east/random

execute if score nextwallmoves hitw_wall matches 0 if score wallcount hitw_wall matches 1.. run scoreboard players remove wallcount hitw_wall 1
execute if score nextwallmoves hitw_wall matches 0 if score wallcount hitw_wall matches 1.. run scoreboard players set nextwallmoves hitw_wall 8
execute if score movementreq hitw_wall matches 0 run function hitw:wall/next

# TESTING PURPOSE

# schedule function hitw:wall/move 8t

