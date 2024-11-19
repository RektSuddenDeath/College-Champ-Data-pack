
scoreboard players set RoundActive tourney_stats 0

# Game Flag
schedule clear master:timer/timeleft/sec
scoreboard players set gameflag sba_game 0
execute as @a run scoreboard players operation @s sba_gamekills += @s sba_roundkills
schedule clear master:latejoinspec
# SFX and Title

stopsound @a voice minecraft:music.skybattle
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s
execute as @a at @s run playsound music.gameendmusic record @s
title @a times 0 60 20
title @a title "§c§l游戏结束！"
title @a actionbar ""

effect give @a resistance 15 5 true
effect give @a fire_resistance 15 5 true

# no more fireworks
schedule clear utils:firework_death
# Clear center
kill @e[type=area_effect_cloud,tag=bordercenter]
kill @e[type=item]
# Win Announce & Win PT
execute if score teams sba_game matches 1.. run tellraw @a[gamemode=!survival] ["","§b[§r戭§b] ",{"selector":"@a[gamemode=survival]"},"§b是最后存活的玩家！"]
execute if score teams sba_game matches 0 run tellraw @a[gamemode=!survival] ["","§b[§r戭§b] ","§b本局无人生还！"]
tellraw @a[gamemode=survival] ["","[§6+",{"score":{"name": "win","objective": "sba_stats"},"color": "gold"},{"text": "分","color": "gold"},"] §a[§r彀§a] ","§a§l你是最后存活的玩家！"]
execute as @a[gamemode=survival] at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1

scoreboard players operation @a[gamemode=survival] sba_indvscore += win sba_stats
scoreboard players operation @a[gamemode=survival] sba_roundscore += win sba_stats

execute as @a[gamemode=survival] run scoreboard players set @s sba_recap_r3 1

gamemode spectator @a

# Final Recap
function skybattle:player_action/final_recap

# Personal Scorings
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局淘汰了"},{"score":{"name": "@s","objective": "sba_roundkills"},"color":"aqua"},{"text": "名对手。"}]
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局获得了"},{"score":{"name": "@s","objective": "sba_roundscore"},"color":"gold"},{"text": "分。"}]

# Back to hub in 45s if it's tournament mode
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : sba_sb

execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

# debug

gamerule reducedDebugInfo false

# Regenerate arena in 30s
execute if score eventmode tourney_stats matches 0 if score map sba_game matches 1 run schedule function skybattle:structure/zone3/classic/place 35s
execute if score eventmode tourney_stats matches 0 if score map sba_game matches 2 run schedule function skybattle:structure/zone3/sandcastle/place 35s
execute if score eventmode tourney_stats matches 0 if score map sba_game matches 3 run schedule function skybattle:structure/zone3/wasteland/place 35s
execute if score eventmode tourney_stats matches 0 if score map sba_game matches 4 run schedule function skybattle:structure/zone3/cakesland/place 35s

# FF Modifier
execute if score modifiers_friendlyfire sba_game matches 1 run scoreboard players set friendly_fire_mod tourney_stats 1


# Remove center
kill @e[type=area_effect_cloud,tag=bordercenter]
# Reward Summary
scoreboard players set red sba_teamscore 0
scoreboard players set blue sba_teamscore 0
scoreboard players set green sba_teamscore 0
scoreboard players set yellow sba_teamscore 0
scoreboard players set cyan sba_teamscore 0
scoreboard players set orange sba_teamscore 0
scoreboard players set purple sba_teamscore 0
scoreboard players set pink sba_teamscore 0

execute as @a[team=red] run scoreboard players operation red sba_teamscore += @s sba_indvscore
execute as @a[team=blue] run scoreboard players operation blue sba_teamscore += @s sba_indvscore
execute as @a[team=green] run scoreboard players operation green sba_teamscore += @s sba_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow sba_teamscore += @s sba_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan sba_teamscore += @s sba_indvscore
execute as @a[team=orange] run scoreboard players operation orange sba_teamscore += @s sba_indvscore
execute as @a[team=purple] run scoreboard players operation purple sba_teamscore += @s sba_indvscore
execute as @a[team=pink] run scoreboard players operation pink sba_teamscore += @s sba_indvscore

scoreboard players operation red sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation red sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation green sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation green sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple sba_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink sba_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink sba_teamscore /= multiplier2 tourney_stats


# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "sba_teamscore"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi


scoreboard players operation 红队 overallscore += red sba_teamscore
scoreboard players operation 蓝队 overallscore += blue sba_teamscore
scoreboard players operation 绿队 overallscore += green sba_teamscore
scoreboard players operation 黄队 overallscore += yellow sba_teamscore
scoreboard players operation 青队 overallscore += cyan sba_teamscore
scoreboard players operation 橙队 overallscore += orange sba_teamscore
scoreboard players operation 紫队 overallscore += purple sba_teamscore
scoreboard players operation 粉队 overallscore += pink sba_teamscore

scoreboard players operation red GameRankTarget = red sba_teamscore
scoreboard players operation blue GameRankTarget = blue sba_teamscore
scoreboard players operation green GameRankTarget = green sba_teamscore
scoreboard players operation yellow GameRankTarget = yellow sba_teamscore
scoreboard players operation cyan GameRankTarget = cyan sba_teamscore
scoreboard players operation orange GameRankTarget = orange sba_teamscore
scoreboard players operation purple GameRankTarget = purple sba_teamscore
scoreboard players operation pink GameRankTarget = pink sba_teamscore

execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s sba_indvscore
function utils:personal/update

execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s sba_indvscore
function utils:rankstart

schedule function utils:text/gamescore 2s
schedule function utils:text/mvp 10s
schedule function skybattle:mvp 12s
schedule function utils:text/eventstandings 20s