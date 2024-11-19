
# Check if player is On Ground
execute as @a[team=!spec] run execute store result score @s pkw2_onGround run data get entity @s OnGround
execute as @a[team=!spec] run execute store result score @s pkw2_coordsX run data get entity @s Pos[0]
execute as @a[team=!spec] run execute store result score @s pkw2_coordsZ run data get entity @s Pos[2]
# Store Coords


# Bonus Path 1
function pkw2:checkpoint/bonus/1
# Main 1
function pkw2:checkpoint/main/1
# Bonus Path 2
function pkw2:checkpoint/bonus/2
# Main 2
function pkw2:checkpoint/main/2
# Bonus Path 3
function pkw2:checkpoint/bonus/3
# Main 3
function pkw2:checkpoint/main/3
# Bonus Path 4
function pkw2:checkpoint/bonus/4
# Main 4
function pkw2:checkpoint/main/4
# Bonus Path 5
function pkw2:checkpoint/bonus/5
# Main 5
function pkw2:checkpoint/main/5
# Final
function pkw2:checkpoint/final/center
function pkw2:checkpoint/final/easy
function pkw2:checkpoint/final/medium
function pkw2:checkpoint/final/hard
# Play actionbar
title @a[tag=checkpointed] actionbar "§e已更新存档点"
scoreboard players remove @a[scores={pkw2_titledelay=1..}] pkw2_titledelay 1
# Cleanup
tag @a remove checkpointed
execute if score gameflag pkw2_game matches 1 run schedule function pkw2:checkpoint/assign 1t