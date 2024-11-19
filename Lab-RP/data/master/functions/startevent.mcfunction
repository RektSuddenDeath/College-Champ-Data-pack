
scoreboard players set eventmode tourney_stats 1
scoreboard players set totalcount tourney_stats 0
scoreboard players set gamecount tourney_stats 0
scoreboard players set next_gamecount tourney_stats 1
scoreboard players set phase tourney_stats 1

scoreboard players set multiplier1 tourney_stats 1
scoreboard players set multiplier2 tourney_stats 1

scoreboard players set scoreSavedOnReload tourney_stats 1
scoreboard players set games_added tourney_stats 0

tellraw @s "§r[§6DEV§r] Started the event."
tellraw @s "§aScore is now saved on reload."
tellraw @s "§aInitialized score storage."
gamerule sendCommandFeedback false
function master:timer/decisiondome/2min30

# Only for admin
tag RektSuddenDeath add fs_recv

# Score Storage init
scoreboard objectives add stats_gamescore_1 dummy
scoreboard objectives add stats_gamescore_2 dummy
scoreboard objectives add stats_gamescore_3 dummy
scoreboard objectives add stats_gamescore_4 dummy
scoreboard objectives add stats_gamescore_5 dummy
scoreboard objectives add stats_gamescore_6 dummy
scoreboard objectives add stats_gamescore_7 dummy
scoreboard objectives add stats_gamescore_8 dummy

scoreboard objectives add stats_totalscore_1 dummy
scoreboard objectives add stats_totalscore_2 dummy
scoreboard objectives add stats_totalscore_3 dummy
scoreboard objectives add stats_totalscore_4 dummy
scoreboard objectives add stats_totalscore_5 dummy
scoreboard objectives add stats_totalscore_6 dummy
scoreboard objectives add stats_totalscore_7 dummy
scoreboard objectives add stats_totalscore_8 dummy

# Chaos Score
execute if score modifiers_chaos_multi tourney_stats matches 1 run function decisiondome:elevatorjoke/chaos/init

# Init Status, some are unused methods.
data modify storage master:event_status multi_uniform set value "1.0"
data modify storage master:event_status game_count set value 1

execute unless score custom_max_games tourney_stats matches 1 run data modify storage master:event_status max_game_count set value 8