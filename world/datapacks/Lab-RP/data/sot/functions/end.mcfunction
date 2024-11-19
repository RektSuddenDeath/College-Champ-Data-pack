difficulty peaceful
gamerule fallDamage false
scoreboard players set gameflag SotGame 0

scoreboard players set RoundActive tourney_stats 0
schedule clear sot:time/sandglass
schedule clear sot:glow
schedule clear utils:survivalregen

#clears inv
clear @a[team=!spec]
execute as @a run attribute @s generic.max_health base set 20

#clears actionbar
title @a actionbar [{"text":" "}]
title @a times 0 60 20
title @a title [{"text":"游戏结束！","color":"red","bold":true}]


stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
execute as @a at @s run playsound music.gameendmusic record @s

schedule function utils:text/gamescore 2s
schedule function utils:text/eventstandings 10s
schedule clear master:latejoinspec
function sot:scoreboard/end

kill @e[type=item]
kill @e[type=armor_stand,x=1800,y=0,z=1800,dx=1700,dy=255,dz=1700]
kill @e[type=area_effect_cloud,tag=sotopener]
kill @e[type=area_effect_cloud,tag=sotmapanchors]

scoreboard objectives add temp_indvscore dummy
scoreboard players operation @a[team=red] temp_indvscore = red SotTeamBanked
scoreboard players operation @a[team=blue] temp_indvscore = blue SotTeamBanked
scoreboard players operation @a[team=green] temp_indvscore = green SotTeamBanked
scoreboard players operation @a[team=yellow] temp_indvscore = yellow SotTeamBanked
scoreboard players operation @a[team=cyan] temp_indvscore = cyan SotTeamBanked
scoreboard players operation @a[team=orange] temp_indvscore = orange SotTeamBanked
scoreboard players operation @a[team=pink] temp_indvscore = pink SotTeamBanked
scoreboard players operation @a[team=purple] temp_indvscore = purple SotTeamBanked
scoreboard players operation @a temp_indvscore /= 4 math
execute as @a run scoreboard players operation @s tourney_indv += @s temp_indvscore
scoreboard objectives remove temp_indvscore

scoreboard players operation red SotTeamBanked *= multiplier1 tourney_stats
scoreboard players operation red SotTeamBanked /= multiplier2 tourney_stats

scoreboard players operation blue SotTeamBanked *= multiplier1 tourney_stats
scoreboard players operation blue SotTeamBanked /= multiplier2 tourney_stats

scoreboard players operation green SotTeamBanked *= multiplier1 tourney_stats
scoreboard players operation green SotTeamBanked /= multiplier2 tourney_stats

scoreboard players operation yellow SotTeamBanked *= multiplier1 tourney_stats
scoreboard players operation yellow SotTeamBanked /= multiplier2 tourney_stats

scoreboard players operation cyan SotTeamBanked *= multiplier1 tourney_stats
scoreboard players operation cyan SotTeamBanked /= multiplier2 tourney_stats

scoreboard players operation orange SotTeamBanked *= multiplier1 tourney_stats
scoreboard players operation orange SotTeamBanked /= multiplier2 tourney_stats

scoreboard players operation purple SotTeamBanked *= multiplier1 tourney_stats
scoreboard players operation purple SotTeamBanked /= multiplier2 tourney_stats

scoreboard players operation pink SotTeamBanked *= multiplier1 tourney_stats
scoreboard players operation pink SotTeamBanked /= multiplier2 tourney_stats


# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "SotTeamBanked"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi


scoreboard players operation 红队 overallscore += red SotTeamBanked
scoreboard players operation 蓝队 overallscore += blue SotTeamBanked
scoreboard players operation 绿队 overallscore += green SotTeamBanked
scoreboard players operation 黄队 overallscore += yellow SotTeamBanked
scoreboard players operation 青队 overallscore += cyan SotTeamBanked
scoreboard players operation 橙队 overallscore += orange SotTeamBanked
scoreboard players operation 紫队 overallscore += purple SotTeamBanked
scoreboard players operation 粉队 overallscore += pink SotTeamBanked


scoreboard players operation red GameRankTarget = red SotTeamBanked
scoreboard players operation blue GameRankTarget = blue SotTeamBanked
scoreboard players operation green GameRankTarget = green SotTeamBanked
scoreboard players operation yellow GameRankTarget = yellow SotTeamBanked
scoreboard players operation cyan GameRankTarget = cyan SotTeamBanked
scoreboard players operation orange GameRankTarget = orange SotTeamBanked
scoreboard players operation purple GameRankTarget = purple SotTeamBanked
scoreboard players operation pink GameRankTarget = pink SotTeamBanked

function utils:personal/update

team modify placeholder_4 suffix [{"text":"游戏结束","color": "red","bold":true}]

execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_red
execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_blue
execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_green
execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_yellow

execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_red 14
execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_blue 14
execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_green 14
execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_yellow 14

execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_cyan
execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_pink
execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_orange
execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_purple

execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_cyan 14
execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_pink 14
execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_orange 14
execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_purple 14

execute if score eventmode tourney_stats matches 1 run scoreboard players reset §4 Sotsb_global
execute if score eventmode tourney_stats matches 1 run scoreboard players set : Sotsb_global 14
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

# Destroy All Portals
fill 1517 107 1446 1527 102 1446 air destroy
# GRADUALLY UNLOAD ALL SANDS OF TIME CHUNKS
## TO BE DONE
tellraw @a[tag=_transcript] ["  §bTranscript >> §f","全部队伍均完成了探险！"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]


# Modifier: Clear flags
tag @a remove sot_ability_access_rusty_doors
tag @a remove sumo_warden
execute as @a run attribute @s generic.max_health base set 20.0
advancement revoke @a only sot:in_warden_fight

# Generic: Clear Flags
tag @a remove sot_escaped

