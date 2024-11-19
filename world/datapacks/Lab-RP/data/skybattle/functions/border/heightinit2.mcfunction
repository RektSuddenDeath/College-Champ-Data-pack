
scoreboard players add heightwidth1 sba_game 7
execute as @e[type=area_effect_cloud,tag=heightanchor] at @s run tp @s ^ ^ ^7
execute as @e[type=area_effect_cloud,tag=heightanchor] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[skybattle,heightborder],Rotation:[270f,0f]}

execute as @e[type=area_effect_cloud,tag=heightanchor] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[skybattle,heightwidthanchor,heightborder],Rotation:[90f,0f]}
execute as @e[type=area_effect_cloud,tag=heightanchor] at @s run summon area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:[skybattle,heightwidthanchor,heightborder],Rotation:[270f,0f]}

execute if score heightwidth1 sba_game > width sba_game run scoreboard players set heightwidth2 sba_game 0
execute if score heightwidth1 sba_game > width sba_game run function skybattle:border/height

execute if score heightwidth1 sba_game <= width sba_game run function skybattle:border/heightinit2