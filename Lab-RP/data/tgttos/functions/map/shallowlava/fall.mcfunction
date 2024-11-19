

execute as @a[team=!spec,gamemode=adventure] at @s if block ~ ~ ~ lava run tag @s add fallen
execute as @a[team=!spec,gamemode=adventure] at @s if block ~ ~-1 ~ magma_block run tag @s add fallen

 tp @a[tag=fallen] -6925.07 102.00 -6487.08 -269.98 0.18
 execute as @a[tag=fallen] run function tgttos:deathmsg

 tag @a remove fallen
 scoreboard players add deathmsg tgttos_game 1
 execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
 execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/shallowlava/fall 1t