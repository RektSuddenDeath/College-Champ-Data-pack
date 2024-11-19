tellraw @a[scores={standings=1..}] ["",{"text": "当前 Parkour Tag 排行","bold": true}]
tellraw @a[scores={standings=1..}] ""

execute as @a[team=red] run scoreboard players operation red standingsCache += @s pkt_indvscore
execute as @a[team=blue] run scoreboard players operation blue standingsCache += @s pkt_indvscore
execute as @a[team=green] run scoreboard players operation green standingsCache += @s pkt_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow standingsCache += @s pkt_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan standingsCache += @s pkt_indvscore
execute as @a[team=orange] run scoreboard players operation orange standingsCache += @s pkt_indvscore
execute as @a[team=purple] run scoreboard players operation purple standingsCache += @s pkt_indvscore
execute as @a[team=pink] run scoreboard players operation pink standingsCache += @s pkt_indvscore

scoreboard players operation red standingsCache *= multiplier1 tourney_stats
scoreboard players operation red standingsCache /= multiplier2 tourney_stats

scoreboard players operation blue standingsCache *= multiplier1 tourney_stats
scoreboard players operation blue standingsCache /= multiplier2 tourney_stats

scoreboard players operation green standingsCache *= multiplier1 tourney_stats
scoreboard players operation green standingsCache /= multiplier2 tourney_stats

scoreboard players operation yellow standingsCache *= multiplier1 tourney_stats
scoreboard players operation yellow standingsCache /= multiplier2 tourney_stats

scoreboard players operation cyan standingsCache *= multiplier1 tourney_stats
scoreboard players operation cyan standingsCache /= multiplier2 tourney_stats

scoreboard players operation orange standingsCache *= multiplier1 tourney_stats
scoreboard players operation orange standingsCache /= multiplier2 tourney_stats

scoreboard players operation purple standingsCache *= multiplier1 tourney_stats
scoreboard players operation purple standingsCache /= multiplier2 tourney_stats

scoreboard players operation pink standingsCache *= multiplier1 tourney_stats
scoreboard players operation pink standingsCache /= multiplier2 tourney_stats

scoreboard players operation red standingsResult = red standingsCache
scoreboard players operation blue standingsResult = blue standingsCache
scoreboard players operation green standingsResult = green standingsCache
scoreboard players operation yellow standingsResult = yellow standingsCache
scoreboard players operation cyan standingsResult = cyan standingsCache
scoreboard players operation orange standingsResult = orange standingsCache
scoreboard players operation purple standingsResult = purple standingsCache
scoreboard players operation pink standingsResult = pink standingsCache

scoreboard players operation @e[type=area_effect_cloud,tag=standings,tag=red] standingsResult = red standingsCache
scoreboard players operation @e[type=area_effect_cloud,tag=standings,tag=blue] standingsResult = blue standingsCache
scoreboard players operation @e[type=area_effect_cloud,tag=standings,tag=green] standingsResult = green standingsCache
scoreboard players operation @e[type=area_effect_cloud,tag=standings,tag=yellow] standingsResult = yellow standingsCache
scoreboard players operation @e[type=area_effect_cloud,tag=standings,tag=cyan] standingsResult = cyan standingsCache
scoreboard players operation @e[type=area_effect_cloud,tag=standings,tag=orange] standingsResult = orange standingsCache
scoreboard players operation @e[type=area_effect_cloud,tag=standings,tag=pink] standingsResult = pink standingsCache
scoreboard players operation @e[type=area_effect_cloud,tag=standings,tag=purple] standingsResult = purple standingsCache

execute as @e[type=area_effect_cloud,tag=standings] run scoreboard players operation @s standingsCache = @s standingsResult

function utils:standings/rank