
scoreboard objectives add temp_playerY dummy
scoreboard objectives add temp_boatsY dummy
execute as @a run execute store result score @s temp_playerY run data get entity @s Pos[1]
execute as @e[type=boat,tag=tgttos] run execute store result score @s temp_boatsY run data get entity @s Pos[1]

tag @a[team=!spec,gamemode=adventure,scores={temp_playerY=..67}] add fallen

tp @a[tag=fallen] -7489 102 -6486 180 0
kill @e[type=boat,scores={temp_boatsY=..75}]
execute as @a[tag=fallen] run function tgttos:deathmsg

tag @a remove fallen
scoreboard objectives remove temp_playerY
scoreboard players add deathmsg tgttos_game 1
execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/boats/fall 1t