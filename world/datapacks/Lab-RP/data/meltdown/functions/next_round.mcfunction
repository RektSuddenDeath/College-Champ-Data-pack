
schedule clear meltdown:next_round_listener
schedule clear master:timer/nextround/sec


# Game Main Item
scoreboard players set gameflag meltdown_game 0
scoreboard players add round meltdown_game 1

scoreboard players set may_drop_items tourney_stats 0

# Reset All Flags
scoreboard players set @a meltdown_freezer -1
scoreboard players set @a meltdown_heat -1
scoreboard players set @a meltdown_roundKills 0
scoreboard players set @a meltdown_heater_cooldown 0
scoreboard players set @a meltdown_telepickaxe_cooldown 0
scoreboard players set @a meltdown_telepickaxe_call 0
scoreboard players set @a meltdown_crates_broken_round 0
scoreboard players set @a meltdown_has_prev_attacker 0
scoreboard players set @a meltdown_freeze_since -1
scoreboard players set @a meltdown_invulnerable 0
scoreboard players set @a meltdown_heater_used 0
scoreboard players set @a meltdown_player_is_frozen 0
scoreboard players set @a meltdown_round_placement 0
scoreboard players set @a meltdown_team_frozen_delay -1
function meltdown:get_online_teams
scoreboard players set @a meltdown_roundscore 0
scoreboard objectives remove meltdown_gate_close_time
scoreboard objectives add meltdown_gate_close_time dummy

scoreboard players set @a meltdown_fall_death_delay -1
gamemode adventure @a[team=!spec]

# Map Assign
function meltdown:map_id/init

# Default Kit
execute as @a[team=!spec] run function meltdown:default_kit

# Init Tp 2/3
execute if score round meltdown_game matches 2 run function meltdown:init_tp/round_2
execute if score round meltdown_game matches 3 run function meltdown:init_tp/round_3

execute if score round meltdown_game matches 2 run team modify placeholder_8 suffix "2/3"
execute if score round meltdown_game matches 3 run team modify placeholder_8 suffix "3/3"

team modify placeholder_5 suffix "§a§l剩余: §r- 懆 - 愺"

function master:timer/starting/20s

# Begin Listener
function meltdown:beginlistener

# Heater Place Handler
function meltdown:heater_place_handler

# Telepickaxe Call Handler
function meltdown:telepickaxe_call_handler
