
scoreboard objectives remove standingsRank
scoreboard objectives remove standingsCache
scoreboard objectives remove standingsResult

kill @e[type=area_effect_cloud,tag=standings]

summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["standings","red"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["standings","blue"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["standings","green"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["standings","yellow"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["standings","cyan"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["standings","orange"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["standings","purple"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["standings","pink"]}

execute if score ActiveGame tourney_stats matches 1..11 run scoreboard objectives add standingsRank dummy
execute if score ActiveGame tourney_stats matches 1..11 run scoreboard objectives add standingsCache dummy
execute if score ActiveGame tourney_stats matches 1..11 run scoreboard objectives add standingsResult dummy

scoreboard players set Step standingsCache 1
scoreboard players set Total standingsCache 8
scoreboard players set Position standingsRank 1

execute if score ActiveGame tourney_stats matches 0 run function utils:standings/inactive
execute if score ActiveGame tourney_stats matches 1 run function utils:standings/games/pkt
execute if score ActiveGame tourney_stats matches 2 run function utils:standings/games/bb
execute if score ActiveGame tourney_stats matches 3 run function utils:standings/games/sot
execute if score ActiveGame tourney_stats matches 4 run function utils:standings/games/pkw
execute if score ActiveGame tourney_stats matches 5 run function utils:standings/games/hitw
execute if score ActiveGame tourney_stats matches 6 run function utils:standings/games/bm
execute if score ActiveGame tourney_stats matches 7 run function utils:standings/games/ar
execute if score ActiveGame tourney_stats matches 8 run function utils:standings/games/tgttos
execute if score ActiveGame tourney_stats matches 9 run function utils:standings/games/rsr
execute if score ActiveGame tourney_stats matches 11 run function utils:standings/games/skybattle