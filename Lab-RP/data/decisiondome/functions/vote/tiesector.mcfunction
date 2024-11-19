scoreboard players set cyclespeed tourney_stats 7
scoreboard players remove cyclecount tourney_stats 1
execute if score cyclecount tourney_stats matches 2 run function decisiondome:vote/whiteout
execute if score cyclecount tourney_stats matches 0 if entity @e[type=area_effect_cloud,tag=topvote,tag=1] run function decisiondome:column/1/green
execute if score cyclecount tourney_stats matches 0 if entity @e[type=area_effect_cloud,tag=topvote,tag=2] run function decisiondome:column/2/green
execute if score cyclecount tourney_stats matches 0 if entity @e[type=area_effect_cloud,tag=topvote,tag=3] run function decisiondome:column/3/green
execute if score cyclecount tourney_stats matches 0 if entity @e[type=area_effect_cloud,tag=topvote,tag=4] run function decisiondome:column/4/green
execute if score cyclecount tourney_stats matches 0 if entity @e[type=area_effect_cloud,tag=topvote,tag=5] run function decisiondome:column/5/green
execute if score cyclecount tourney_stats matches 0 if entity @e[type=area_effect_cloud,tag=topvote,tag=6] run function decisiondome:column/6/green
execute if score cyclecount tourney_stats matches 0 if entity @e[type=area_effect_cloud,tag=topvote,tag=7] run function decisiondome:column/7/green
execute if score cyclecount tourney_stats matches 0 if entity @e[type=area_effect_cloud,tag=topvote,tag=8] run function decisiondome:column/8/green

execute if score cyclecount tourney_stats matches 0 run scoreboard players operation cyclecount tourney_stats = cyclespeed tourney_stats
schedule function decisiondome:vote/tiesector 1t