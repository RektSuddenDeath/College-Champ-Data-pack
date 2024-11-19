
tag @s add temp_sw_source
scoreboard objectives add temp_sba_sw dummy
scoreboard players set targets temp_sba_sw 0

execute at @s as @a[gamemode=!spectator,distance=0..5] run tag @s add temp_sw_target
execute at @s as @a[gamemode=!spectator,distance=0..5] run scoreboard players add targets temp_sba_sw 1

execute if score targets temp_sba_sw matches 1 run execute as @a[tag=temp_sw_target] run function skybattle:modifiers/shockwave/damage_amount/1
execute if score targets temp_sba_sw matches 2 run execute as @a[tag=temp_sw_target] run function skybattle:modifiers/shockwave/damage_amount/2
execute if score targets temp_sba_sw matches 3 run execute as @a[tag=temp_sw_target] run function skybattle:modifiers/shockwave/damage_amount/3
execute if score targets temp_sba_sw matches 4 run execute as @a[tag=temp_sw_target] run function skybattle:modifiers/shockwave/damage_amount/4
execute if score targets temp_sba_sw matches 5 run execute as @a[tag=temp_sw_target] run function skybattle:modifiers/shockwave/damage_amount/5
execute if score targets temp_sba_sw matches 6.. run execute as @a[tag=temp_sw_target] run function skybattle:modifiers/shockwave/damage_amount/else

execute if score targets temp_sba_sw matches 1.. run tellraw @s ["§c[§r鼱§c] 你对",{"score":{"name": "targets","objective": "temp_sba_sw"},"color": "gold"},"§c个目标造成了共计","§f6.0","§c点冲击波伤害！"]
scoreboard objectives remove temp_sba_sw
tag @a remove temp_sw_target
tag @s remove temp_sw_source