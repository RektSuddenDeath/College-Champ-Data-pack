kill @e[type=area_effect_cloud,tag=ddvotecount]
execute unless score 1 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["1","ddvotecount"]}
execute unless score 2 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["2","ddvotecount"]}
execute unless score 3 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["3","ddvotecount"]}
execute unless score 4 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["4","ddvotecount"]}
execute unless score 5 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["5","ddvotecount"]}
execute unless score 6 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["6","ddvotecount"]}
execute unless score 7 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["7","ddvotecount"]}
execute unless score 8 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["8","ddvotecount"]}

execute as @e[type=area_effect_cloud,tag=ddvotecount,tag=1] run scoreboard players operation @s dd_vote = @e[type=area_effect_cloud,tag=dd,tag=1] dd_vote
execute as @e[type=area_effect_cloud,tag=ddvotecount,tag=2] run scoreboard players operation @s dd_vote = @e[type=area_effect_cloud,tag=dd,tag=2] dd_vote
execute as @e[type=area_effect_cloud,tag=ddvotecount,tag=3] run scoreboard players operation @s dd_vote = @e[type=area_effect_cloud,tag=dd,tag=3] dd_vote
execute as @e[type=area_effect_cloud,tag=ddvotecount,tag=4] run scoreboard players operation @s dd_vote = @e[type=area_effect_cloud,tag=dd,tag=4] dd_vote
execute as @e[type=area_effect_cloud,tag=ddvotecount,tag=5] run scoreboard players operation @s dd_vote = @e[type=area_effect_cloud,tag=dd,tag=5] dd_vote
execute as @e[type=area_effect_cloud,tag=ddvotecount,tag=6] run scoreboard players operation @s dd_vote = @e[type=area_effect_cloud,tag=dd,tag=6] dd_vote
execute as @e[type=area_effect_cloud,tag=ddvotecount,tag=7] run scoreboard players operation @s dd_vote = @e[type=area_effect_cloud,tag=dd,tag=7] dd_vote
execute as @e[type=area_effect_cloud,tag=ddvotecount,tag=8] run scoreboard players operation @s dd_vote = @e[type=area_effect_cloud,tag=dd,tag=8] dd_vote