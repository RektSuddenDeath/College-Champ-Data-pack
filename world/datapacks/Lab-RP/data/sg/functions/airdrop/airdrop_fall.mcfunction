
scoreboard players add @e[type=armor_stand,tag=sg_airdropstand] sg_adlife 1
scoreboard players add @e[type=armor_stand,tag=sg_airdropstand] sg_adfirework 1
execute as @e[type=armor_stand,tag=sg_airdropstand] run scoreboard players operation @s sg_adfirework %= 5 math

execute as @e[type=armor_stand,tag=sg_airdropstand] at @s if score @s sg_adfirework matches 0 if score @s sg_adlife matches 0..360 run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:4,Colors:[I;16751872]}]}}}}
execute as @e[type=armor_stand,tag=sg_airdropstand] at @s run tp @s ~ ~-0.25 ~
