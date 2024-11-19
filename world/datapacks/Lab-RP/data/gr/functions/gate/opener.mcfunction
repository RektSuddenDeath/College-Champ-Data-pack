
scoreboard players add @e[type=area_effect_cloud,tag=gr_opener] gr_gateopen 1
execute as @e[type=area_effect_cloud,tag=gr_opener] at @s run fill ~ ~ ~1 ~ ~ ~-1 air
execute as @e[type=area_effect_cloud,tag=gr_opener] at @s run tp @s ~ ~1 ~
execute as @e[type=area_effect_cloud,tag=gr_opener] if score @s gr_gateopen matches 5 run kill @s

execute if score gameflag gr_game matches 1 run schedule function gr:gate/opener 2t