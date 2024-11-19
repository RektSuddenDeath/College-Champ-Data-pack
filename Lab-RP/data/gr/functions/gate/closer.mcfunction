
scoreboard players add @e[type=area_effect_cloud,tag=gr_closer] gr_gateclose 1
execute as @e[type=area_effect_cloud,tag=gr_closer] at @s if score @s gr_gateclose matches 3..5 run fill ~ ~ ~1 ~ ~ ~-1 white_concrete
execute as @e[type=area_effect_cloud,tag=gr_closer] at @s if score @s gr_gateclose matches 2 run fill ~ ~ ~1 ~ ~ ~-1 red_concrete
execute as @e[type=area_effect_cloud,tag=gr_closer] at @s if score @s gr_gateclose matches 2 run fill ~ ~ ~ ~ ~ ~ white_concrete
execute as @e[type=area_effect_cloud,tag=gr_closer] at @s if score @s gr_gateclose matches 1 run fill ~ ~ ~1 ~ ~ ~-1 red_concrete
execute as @e[type=area_effect_cloud,tag=gr_closer] at @s run tp @s ~ ~-1 ~
execute as @e[type=area_effect_cloud,tag=gr_closer] if score @s gr_gateclose matches 5 run kill @s

execute if score gameflag gr_game matches 1 run schedule function gr:gate/closer 2t