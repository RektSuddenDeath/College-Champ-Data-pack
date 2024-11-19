
scoreboard players set RoundActive tourney_stats 1

scoreboard players set gameflag bb_game 1

execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 2 2
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1

# Starts Necessary Detections
function master:timer/timeleft/1min
function battlebox:game/5/detection
function battlebox:ranking



#  
title @a title " "
title @a subtitle " "

# Summon Loot items
function battlebox:grounditem
# Alive Tag, update scoreboard
tag @a[gamemode=adventure] add bb_alive
function battlebox:statusbar/startinit
# Drop items
execute as @e[type=marker,tag=bb_centeranchor,tag=!center_locked] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 white_wool
execute as @e[type=marker,tag=battleboxanchor,tag=spawns] at @s run fill ~-2 ~ ~3 ~3 ~3 ~-3 air replace gray_stained_glass
# Glowing
effect give @a[team=!spec] glowing infinite 0 true