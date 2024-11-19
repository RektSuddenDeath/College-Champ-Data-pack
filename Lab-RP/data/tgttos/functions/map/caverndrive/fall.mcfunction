
execute as @a[team=!spec,x=17926,y=87,z=17340,dx=32,dy=24,dz=20,tag=!safe_land] run attribute @s generic.attack_damage base set 1000

tellraw @a[team=!spec,x=17926,y=87,z=17340,dx=32,dy=24,dz=20,tag=!safe_land] ["[§e►§f] §a§l你可以安全着陆了。"]
tag @a[team=!spec,x=17926,y=87,z=17340,dx=32,dy=24,dz=20,tag=!safe_land] add safe_land

scoreboard objectives add temp_playerY dummy
execute as @a run execute store result score @s temp_playerY run data get entity @s Pos[1]

tag @a[team=!spec,gamemode=adventure,scores={temp_playerY=..280},tag=!safe_land,nbt={OnGround:1b}] add fallen

tp @a[tag=fallen] 17985 284 18054 180 0
execute as @a[tag=fallen] run function tgttos:deathmsg

tag @a remove fallen
scoreboard objectives remove temp_playerY
scoreboard players add deathmsg tgttos_game 1
execute if score deathmsg tgttos_game matches 40 run scoreboard players set deathmsg tgttos_game 0
 
execute if score gameflag tgttos_game matches 1 run schedule function tgttos:map/caverndrive/fall 1t