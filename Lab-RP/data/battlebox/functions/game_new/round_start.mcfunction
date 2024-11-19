
scoreboard players set RoundActive tourney_stats 1

scoreboard players set gameflag bb_game 1
scoreboard players set completed bb_game 0
execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 2 2
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1

# Remix Settings
execute if score remix bb_game matches 1 run function battlebox:remix/shop/game_init

# Starts Necessary Detections
function master:timer/timeleft/1min
function battlebox:game_new/round_detection
function battlebox:ranking

#  
title @a title " "
title @a subtitle " "

tellraw @a ["§b[§r曺§b] 回合",{"score":{"name": "round","objective": "bb_game"},"color": "#E3E3E3"},"§b开始！"]

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

function battlebox:scoreboard/refresh