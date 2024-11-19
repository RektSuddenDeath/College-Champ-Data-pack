
scoreboard objectives add overallcalculate dummy

summon minecraft:area_effect_cloud -10000 50 -10000 {Duration:99999999,Tags: ["red","db"]}
summon minecraft:area_effect_cloud -10000 50 -10000 {Duration:99999999,Tags: ["blue","db"]}
summon minecraft:area_effect_cloud -10000 50 -10000 {Duration:99999999,Tags: ["green","db"]}
summon minecraft:area_effect_cloud -10000 50 -10000 {Duration:99999999,Tags: ["yellow","db"]}
summon minecraft:area_effect_cloud -10000 50 -10000 {Duration:99999999,Tags: ["cyan","db"]}
summon minecraft:area_effect_cloud -10000 50 -10000 {Duration:99999999,Tags: ["orange","db"]}
summon minecraft:area_effect_cloud -10000 50 -10000 {Duration:99999999,Tags: ["purple","db"]}
summon minecraft:area_effect_cloud -10000 50 -10000 {Duration:99999999,Tags: ["pink","db"]}

scoreboard players operation @e[type=area_effect_cloud,tag=red] overallcalculate = 红队 overallscore
scoreboard players operation @e[type=area_effect_cloud,tag=blue] overallcalculate = 蓝队 overallscore
scoreboard players operation @e[type=area_effect_cloud,tag=green] overallcalculate = 绿队 overallscore
scoreboard players operation @e[type=area_effect_cloud,tag=yellow] overallcalculate = 黄队 overallscore
scoreboard players operation @e[type=area_effect_cloud,tag=cyan] overallcalculate = 青队 overallscore
scoreboard players operation @e[type=area_effect_cloud,tag=orange] overallcalculate = 橙队 overallscore
scoreboard players operation @e[type=area_effect_cloud,tag=purple] overallcalculate = 紫队 overallscore
scoreboard players operation @e[type=area_effect_cloud,tag=pink] overallcalculate = 粉队 overallscore
# Fetch Position 1 and 2
scoreboard players set Marker overallcalculate -2147483647
execute as @e[type=area_effect_cloud,tag=db] run scoreboard players operation Marker overallcalculate > @s overallcalculate
execute as @e[type=area_effect_cloud,tag=db] if score @s overallcalculate = Marker overallcalculate run tag @s add pos1
execute as @e[type=area_effect_cloud,tag=db] if score @s overallcalculate = Marker overallcalculate run scoreboard players set @s overallcalculate -2147483648

scoreboard players set Marker overallcalculate -2147483647
execute as @e[type=area_effect_cloud,tag=db] run scoreboard players operation Marker overallcalculate > @s overallcalculate
execute as @e[type=area_effect_cloud,tag=db] if score @s overallcalculate = Marker overallcalculate run tag @s add pos2

execute if entity @e[type=area_effect_cloud,tag=red,tag=pos1] run scoreboard players set TeamOne db_teams 1
execute if entity @e[type=area_effect_cloud,tag=blue,tag=pos1] run scoreboard players set TeamOne db_teams 2
execute if entity @e[type=area_effect_cloud,tag=green,tag=pos1] run scoreboard players set TeamOne db_teams 3
execute if entity @e[type=area_effect_cloud,tag=yellow,tag=pos1] run scoreboard players set TeamOne db_teams 4
execute if entity @e[type=area_effect_cloud,tag=cyan,tag=pos1] run scoreboard players set TeamOne db_teams 5
execute if entity @e[type=area_effect_cloud,tag=orange,tag=pos1] run scoreboard players set TeamOne db_teams 6
execute if entity @e[type=area_effect_cloud,tag=purple,tag=pos1] run scoreboard players set TeamOne db_teams 7
execute if entity @e[type=area_effect_cloud,tag=pink,tag=pos1] run scoreboard players set TeamOne db_teams 8


execute if entity @e[type=area_effect_cloud,tag=red,tag=pos2] run scoreboard players set TeamTwo db_teams 1
execute if entity @e[type=area_effect_cloud,tag=blue,tag=pos2] run scoreboard players set TeamTwo db_teams 2
execute if entity @e[type=area_effect_cloud,tag=green,tag=pos2] run scoreboard players set TeamTwo db_teams 3
execute if entity @e[type=area_effect_cloud,tag=yellow,tag=pos2] run scoreboard players set TeamTwo db_teams 4
execute if entity @e[type=area_effect_cloud,tag=cyan,tag=pos2] run scoreboard players set TeamTwo db_teams 5
execute if entity @e[type=area_effect_cloud,tag=orange,tag=pos2] run scoreboard players set TeamTwo db_teams 6
execute if entity @e[type=area_effect_cloud,tag=purple,tag=pos2] run scoreboard players set TeamTwo db_teams 7
execute if entity @e[type=area_effect_cloud,tag=pink,tag=pos2] run scoreboard players set TeamTwo db_teams 8

scoreboard objectives remove overallcalculate
kill @e[type=area_effect_cloud,tag=db]