scoreboard players reset lastPlaceTeam tourney_stats
execute as @e[type=area_effect_cloud,tag=red] if score @s TeamRank matches 8 run scoreboard players set lastPlaceTeam tourney_stats 1
execute as @e[type=area_effect_cloud,tag=blue] if score @s TeamRank matches 8 run scoreboard players set lastPlaceTeam tourney_stats 2
execute as @e[type=area_effect_cloud,tag=green] if score @s TeamRank matches 8 run scoreboard players set lastPlaceTeam tourney_stats 3
execute as @e[type=area_effect_cloud,tag=yellow] if score @s TeamRank matches 8 run scoreboard players set lastPlaceTeam tourney_stats 4
execute as @e[type=area_effect_cloud,tag=cyan] if score @s TeamRank matches 8 run scoreboard players set lastPlaceTeam tourney_stats 5
execute as @e[type=area_effect_cloud,tag=orange] if score @s TeamRank matches 8 run scoreboard players set lastPlaceTeam tourney_stats 6
execute as @e[type=area_effect_cloud,tag=purple] if score @s TeamRank matches 8 run scoreboard players set lastPlaceTeam tourney_stats 7
execute as @e[type=area_effect_cloud,tag=pink] if score @s TeamRank matches 8 run scoreboard players set lastPlaceTeam tourney_stats 8