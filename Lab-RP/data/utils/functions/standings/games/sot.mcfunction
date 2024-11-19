
tellraw @a[scores={standings=1..},team=spec,tag=admin_immune] ["",{"text": "当前 Sands of Time 排行（玩家身上携带金币数）","bold": true}]
tellraw @a[scores={standings=1..},team=spec,tag=admin_immune] ""

scoreboard players operation red standingsCache = red SotTeamCoins
scoreboard players operation blue standingsCache = blue SotTeamCoins
scoreboard players operation green standingsCache = green SotTeamCoins
scoreboard players operation yellow standingsCache = yellow SotTeamCoins
scoreboard players operation cyan standingsCache = cyan SotTeamCoins
scoreboard players operation orange standingsCache = orange SotTeamCoins
scoreboard players operation purple standingsCache = purple SotTeamCoins
scoreboard players operation pink standingsCache = pink SotTeamCoins

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