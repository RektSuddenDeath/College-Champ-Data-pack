
execute as @a[team=!spec] at @s if block ~ ~-3 ~ white_wool run scoreboard players operation @e[type=area_effect_cloud,tag=1,tag=dd,limit=1,sort=nearest] dd_vote += @s dd_remix_player_value
execute as @a[team=!spec] at @s if block ~ ~-3 ~ orange_wool run scoreboard players operation @e[type=area_effect_cloud,tag=2,tag=dd,limit=1,sort=nearest] dd_vote += @s dd_remix_player_value
execute as @a[team=!spec] at @s if block ~ ~-3 ~ magenta_wool run scoreboard players operation @e[type=area_effect_cloud,tag=3,tag=dd,limit=1,sort=nearest] dd_vote += @s dd_remix_player_value
execute as @a[team=!spec] at @s if block ~ ~-3 ~ light_blue_wool run scoreboard players operation @e[type=area_effect_cloud,tag=4,tag=dd,limit=1,sort=nearest] dd_vote += @s dd_remix_player_value
execute as @a[team=!spec] at @s if block ~ ~-3 ~ yellow_wool run scoreboard players operation @e[type=area_effect_cloud,tag=5,tag=dd,limit=1,sort=nearest] dd_vote += @s dd_remix_player_value
execute as @a[team=!spec] at @s if block ~ ~-3 ~ lime_wool run scoreboard players operation @e[type=area_effect_cloud,tag=6,tag=dd,limit=1,sort=nearest] dd_vote += @s dd_remix_player_value
execute as @a[team=!spec] at @s if block ~ ~-3 ~ pink_wool run scoreboard players operation @e[type=area_effect_cloud,tag=7,tag=dd,limit=1,sort=nearest] dd_vote += @s dd_remix_player_value
execute as @a[team=!spec] at @s if block ~ ~-3 ~ gray_wool run scoreboard players operation @e[type=area_effect_cloud,tag=8,tag=dd,limit=1,sort=nearest] dd_vote += @s dd_remix_player_value

tag @a remove dd_swappedPlayer
