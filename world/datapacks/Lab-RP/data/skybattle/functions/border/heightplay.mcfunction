
scoreboard players add widthcycle sba_game 1
execute if score widthcycle sba_game matches 4 run scoreboard players set widthcycle sba_game -2
execute if score widthcycle sba_game matches -2 as @e[type=area_effect_cloud,tag=heightborder] at @s run particle dust 1 0.6 0 7 ~-2 ~ ~-2
execute if score widthcycle sba_game matches -1 as @e[type=area_effect_cloud,tag=heightborder] at @s run particle dust 1 0.6 0 7 ~-1 ~ ~-1
execute if score widthcycle sba_game matches 0 as @e[type=area_effect_cloud,tag=heightborder] at @s run particle dust 1 0.6 0 7 ~0 ~ ~0
execute if score widthcycle sba_game matches 1 as @e[type=area_effect_cloud,tag=heightborder] at @s run particle dust 1 0.6 0 7 ~1 ~ ~1
execute if score widthcycle sba_game matches 2 as @e[type=area_effect_cloud,tag=heightborder] at @s run particle dust 1 0.6 0 7 ~2 ~ ~2
execute if score widthcycle sba_game matches 3 as @e[type=area_effect_cloud,tag=heightborder] at @s run particle dust 1 0.6 0 7 ~3 ~ ~3

scoreboard players set heightcd sba_game 0