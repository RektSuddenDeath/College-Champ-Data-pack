
scoreboard players set @e[type=area_effect_cloud,tag=f1] LightShow 1
scoreboard players set @e[type=area_effect_cloud,tag=f2] LightShow 1
scoreboard players set @e[type=area_effect_cloud,tag=f3] LightShow 1
scoreboard players set @e[type=area_effect_cloud,tag=f4] LightShow 8
scoreboard players set @e[type=area_effect_cloud,tag=f5] LightShow 8
scoreboard players set @e[type=area_effect_cloud,tag=f6] LightShow 8
scoreboard players set @e[type=area_effect_cloud,tag=f7] LightShow 8
scoreboard players set @e[type=area_effect_cloud,tag=f8] LightShow 8

scoreboard players set @e[type=area_effect_cloud,tag=f9] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f10] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f11] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f12] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f13] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f14] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f15] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f16] LightShow -1

scoreboard players set @e[type=area_effect_cloud,tag=f17] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f18] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f19] LightShow -1
scoreboard players set @e[type=area_effect_cloud,tag=f20] LightShow -1

execute as @e[type=area_effect_cloud,tag=finalelight] at @s if score @s LightShow matches -1 run setblock ~ 192 ~ packed_ice

execute as @e[type=area_effect_cloud,tag=finalelight] at @s if score @s LightShow matches 1 run setblock ~ 192 ~ glass
execute as @e[type=area_effect_cloud,tag=finalelight] at @s if score @s LightShow matches 8 run setblock ~ 192 ~ gray_stained_glass