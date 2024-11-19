
function sg:airdrop/2/expire

scoreboard players set airdropValue sg_game 40
scoreboard players set airdropNo sg_game 3

tag @e[type=marker,tag=sg_airdrop] remove airdrop_selected
tag @e[type=marker,tag=airdrop_3,limit=1,sort=random] add airdrop_selected


execute as @e[type=marker,tag=airdrop_selected] at @s run setblock ~ ~-1 ~ bedrock
execute as @e[type=marker,tag=airdrop_selected] at @s run setblock ~ ~-2 ~ glass

execute as @e[type=marker,tag=airdrop_selected] at @s run data modify storage sg:airdrop LodestonePos.X set from entity @s Pos[0]
execute as @e[type=marker,tag=airdrop_selected] at @s run data modify storage sg:airdrop LodestonePos.Y set from entity @s Pos[1]
execute as @e[type=marker,tag=airdrop_selected] at @s run data modify storage sg:airdrop LodestonePos.Z set from entity @s Pos[2]

execute as @a at @s run playsound sound.mapupdate record @s
execute as @e[type=marker,tag=airdrop_selected] at @s run function sg:airdrop/get_distance_a

# 400 ticks to drop to ground
execute as @e[type=marker,tag=airdrop_selected] at @s run summon armor_stand ~1 ~100 ~ {Tags:["sg_airdropstand"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"purpur_pillar",Count:1b}]}