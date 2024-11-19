
scoreboard objectives add temp_playerY dummy
execute as @a run execute store result score @s temp_playerY run data get entity @s Pos[1]
tag @a[team=!spec,gamemode=adventure,scores={temp_playerY=..35}] add fallen


 tp @a[tag=fallen] -9011.5 136.00 -9002.00 -90 0
 execute as @a[tag=fallen] run function tgttos:deathmsg

 tag @a remove fallen
 scoreboard players add deathmsg tgttos_game 1
 execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
 execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/pitfall/fall 1t