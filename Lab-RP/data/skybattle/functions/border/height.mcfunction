scoreboard players add heightwidth2 sba_game 5
execute as @e[type=area_effect_cloud,tag=heightwidthanchor] at @s run tp @s ^ ^ ^5
execute as @e[type=area_effect_cloud,tag=heightwidthanchor] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[skybattle,heightborder],Rotation:[270f,0f]}


execute if score heightwidth2 sba_game <= width sba_game run function skybattle:border/height