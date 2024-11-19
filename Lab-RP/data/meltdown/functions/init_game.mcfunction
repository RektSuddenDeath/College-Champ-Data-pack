
# Game Main Item
scoreboard objectives add meltdown_game dummy
scoreboard players set gameflag meltdown_game 0
scoreboard players set round meltdown_game 1

scoreboard players set may_drop_items tourney_stats 0



# Who Froze the player
scoreboard objectives add meltdown_freezer dummy
scoreboard players set @a meltdown_freezer -1

# Progress for unfreezing a player
scoreboard objectives add meltdown_heat dummy
scoreboard players set @a meltdown_heat -1

# Eliminations
scoreboard objectives add meltdown_roundKills dummy
scoreboard players set @a meltdown_roundKills 0
scoreboard objectives add meltdown_gameKills dummy
scoreboard players set @a meltdown_gameKills 0
# Heater CD
scoreboard objectives add meltdown_heater_cooldown dummy
scoreboard players set @a meltdown_heater_cooldown 0

# Telepickaxe Transfer CD
scoreboard objectives add meltdown_telepickaxe_cooldown dummy
scoreboard players set @a meltdown_telepickaxe_cooldown 0
# Telepickaxe Call
scoreboard objectives add meltdown_telepickaxe_call used:carrot_on_a_stick
scoreboard players set @a meltdown_telepickaxe_call 0

# Crates Obtained
scoreboard objectives add meltdown_crates_broken mined:purpur_pillar
scoreboard objectives add meltdown_crates_broken_round mined:purpur_pillar
scoreboard players set @a meltdown_crates_broken 0
scoreboard players set @a meltdown_crates_broken_round 0

# Has Prev Attcker
scoreboard objectives add meltdown_has_prev_attacker dummy
scoreboard players set @a meltdown_has_prev_attacker 0

# Freeze Since
scoreboard objectives add meltdown_freeze_since dummy
scoreboard players set @a meltdown_freeze_since -1

# Invul
scoreboard objectives add meltdown_invulnerable dummy
scoreboard players set @a meltdown_invulnerable 0

# Heater ID
scoreboard objectives add meltdown_heater_used used:magma_cube_spawn_egg
scoreboard players set @a meltdown_heater_used 0

scoreboard objectives add meltdown_heater_player_id dummy

# Heater Duration
scoreboard objectives add meltdown_heater_duration dummy

#
scoreboard objectives add meltdown_player_is_frozen dummy
scoreboard players set @a meltdown_player_is_frozen 0

# Scoring
scoreboard objectives add meltdown_stats dummy
scoreboard players set freeze meltdown_stats 30
scoreboard players set unfreeze meltdown_stats 30
scoreboard players set per_crate meltdown_stats 12
scoreboard players set per_crate_split meltdown_stats 3
# Round Placement
scoreboard objectives add meltdown_round_placement dummy
scoreboard players set @a meltdown_round_placement 0

# Team Frozen Elimination Delay
scoreboard objectives remove meltdown_team_frozen_delay
scoreboard objectives add meltdown_team_frozen_delay dummy
scoreboard players set @a meltdown_team_frozen_delay -1

# Team Placement
scoreboard objectives add meltdown_team_placement dummy
function meltdown:get_online_teams

# Round Score
scoreboard objectives add meltdown_teamscore dummy
scoreboard objectives add meltdown_roundscore dummy
scoreboard objectives add meltdown_indvscore dummy
scoreboard players set @a meltdown_roundscore 0
scoreboard players set @a meltdown_indvscore 0

# Fall Delay
scoreboard objectives add meltdown_fall_death_delay dummy
scoreboard players set @a meltdown_fall_death_delay -1
scoreboard objectives add meltdown_last_fall_distance dummy
scoreboard players set @a meltdown_last_fall_distance 0
# Gate Closer
scoreboard objectives remove meltdown_gate_close_time
scoreboard objectives add meltdown_gate_close_time dummy

# Log in
scoreboard objectives add meltdown_login custom:leave_game
scoreboard players set @a meltdown_login 0

# Recap 
scoreboard objectives add meltdown_recap_r1 dummy
scoreboard objectives add meltdown_recap_r2 dummy
scoreboard objectives add meltdown_recap_r3 dummy
scoreboard objectives add meltdown_recap_shot_landed dummy
scoreboard objectives add meltdown_recap_frozen dummy
scoreboard objectives add meltdown_recap_thawed dummy
scoreboard objectives add meltdown_recap_crates_gathered dummy

scoreboard players set @a meltdown_recap_crates_gathered 0
scoreboard players set @a meltdown_recap_frozen 0
scoreboard players set @a meltdown_recap_thawed 0
scoreboard players set @a meltdown_recap_r1 0
scoreboard players set @a meltdown_recap_r2 0
scoreboard players set @a meltdown_recap_r3 0
scoreboard players set @a meltdown_recap_shot_landed 0
scoreboard players set @a meltdown_recap_crates_gathered 0

scoreboard objectives add meltdown_recap_played dummy
scoreboard players set @a meltdown_recap_played 0

# Modifiers: Spreading Chill
scoreboard objectives add meltdown_modifiers_chill_meter dummy
scoreboard players set @a meltdown_modifiers_chill_meter 0

# Friendly Fire Disable
team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false
team modify cyan friendlyFire false
team modify pink friendlyFire false
team modify orange friendlyFire false
team modify purple friendlyFire false
execute as @a run attribute @s generic.attack_damage base set -1000
# Init Tp
function meltdown:init_tp/round_1

# Mode
gamemode adventure @a[team=!spec]
# Intro
schedule function meltdown:intro/1 1s
schedule function meltdown:intro/2 3s
schedule function meltdown:intro/3 5s
schedule function meltdown:intro/4 15s
schedule function meltdown:intro/5 25s
schedule function meltdown:intro/6 35s
schedule function meltdown:intro/7 45s
schedule function meltdown:intro/8 55s
schedule function meltdown:intro/9 65s

# Map Assign
function meltdown:map_id/init

# Default Kit
execute as @a[team=!spec] run function meltdown:default_kit
# Begin Listener
scoreboard players set minute master.timer 99

# Init Scb
function meltdown:scoreboard/init
# Begin Listener
function meltdown:beginlistener

# Heater Place Handler
function meltdown:heater_place_handler

# Telepickaxe Call Handler
function meltdown:telepickaxe_call_handler
# Gate Reset
function meltdown:gate_anim/close_gate/spawn

# Map Anchor Flag
execute positioned 60444 0 60422 run execute as @e[type=marker,tag=meltdown_anchor,dx=360,dy=320,dz=360] run tag @s add meltdown_anchor_round_1
execute positioned 60956 0 60422 run execute as @e[type=marker,tag=meltdown_anchor,dx=360,dy=320,dz=360] run tag @s add meltdown_anchor_round_2
execute positioned 61468 0 60422 run execute as @e[type=marker,tag=meltdown_anchor,dx=360,dy=320,dz=360] run tag @s add meltdown_anchor_round_3