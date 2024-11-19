
scoreboard players add heightmove sba_game 1
execute as @e[type=area_effect_cloud,tag=heightcenter] at @s run tp @s ~ ~1 ~

execute if score heightmove sba_game = height sba_game run function skybattle:border/heightinit
execute if score heightmove sba_game < height sba_game run function skybattle:border/heightmove