
scoreboard players set RoundActive tourney_stats 1
scoreboard players set gameflag meltdown_game 1
scoreboard players set preparing_end meltdown_game 0
scoreboard players set centre_crate_unlocked meltdown_game 0

schedule clear master:timer/starting/sec
function master:timer/timeleft/5min
# Give Every active player alive status
tag @a remove meltdown_alive
tag @a remove meltdown_frozen
tag @a remove meltdown_has_heater_placed
tag @a[gamemode=adventure] add meltdown_alive

# Reset log off amounts

scoreboard players set @a meltdown_login 0

# Open Barrier

function meltdown:gate_anim/spawn_1

# Name Tag Visible
team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify green nametagVisibility hideForOtherTeams
team modify yellow nametagVisibility hideForOtherTeams
team modify cyan nametagVisibility hideForOtherTeams
team modify pink nametagVisibility hideForOtherTeams
team modify orange nametagVisibility hideForOtherTeams
team modify purple nametagVisibility hideForOtherTeams

gamerule reducedDebugInfo true
execute as @a run attribute @s generic.knockback_resistance base set 100
# Scoreboard modify


scoreboard players set §6 meltdown_sb 11
scoreboard players set §6 meltdown_sb_red 11
scoreboard players set §6 meltdown_sb_blue 11
scoreboard players set §6 meltdown_sb_green 11
scoreboard players set §6 meltdown_sb_yellow 11
scoreboard players set §6 meltdown_sb_cyan 11
scoreboard players set §6 meltdown_sb_pink 11
scoreboard players set §6 meltdown_sb_orange 11
scoreboard players set §6 meltdown_sb_purple 11

scoreboard players set §4 meltdown_sb 0
scoreboard players set §4 meltdown_sb_red 0
scoreboard players set §4 meltdown_sb_blue 0
scoreboard players set §4 meltdown_sb_green 0
scoreboard players set §4 meltdown_sb_yellow 0
scoreboard players set §4 meltdown_sb_cyan 0
scoreboard players set §4 meltdown_sb_pink 0
scoreboard players set §4 meltdown_sb_orange 0
scoreboard players set §4 meltdown_sb_purple 0

scoreboard players set §5 meltdown_sb -1
scoreboard players set §5 meltdown_sb_red -1
scoreboard players set §5 meltdown_sb_blue -1
scoreboard players set §5 meltdown_sb_green -1
scoreboard players set §5 meltdown_sb_yellow -1
scoreboard players set §5 meltdown_sb_cyan -1
scoreboard players set §5 meltdown_sb_pink -1
scoreboard players set §5 meltdown_sb_orange -1
scoreboard players set §5 meltdown_sb_purple -1

scoreboard players set @a meltdown_login 0

execute as @a run attribute @s generic.attack_damage base set -1000
# fx
title @a title ""
title @a subtitle ""
execute as @a at @s run playsound sound.start record @s
execute as @a at @s run playsound music.meltdown voice @s
execute as @a[team=!spec] at @s run playsound sound.meltdown.room_state_changes record @s
# Time Handler
execute if score round meltdown_game matches 1 run function meltdown:time/round_1
execute if score round meltdown_game matches 2 run function meltdown:time/round_2
execute if score round meltdown_game matches 3 run function meltdown:time/round_3
# Break Pre-placed heaters
execute as @e[type=interaction,tag=meltdown_heater] at @s run function meltdown:unfreeze/heater_break
execute as @a[scores={meltdown_heater_used=1..}] run scoreboard players set @s meltdown_heater_cooldown 100

# Heater Distribute
execute as @a[team=!spec] run function meltdown:distribute_heater
# Start tracking Combat
function utils:combattag/init
# Meltdown Specific Combat
function meltdown:eliminations/1
# Unfreeze Component
function meltdown:unfreeze/loop
# Cooldown Handler
function meltdown:cooldown_handler
# Room Melt Handler
function meltdown:room_melt/init
# Room Siren Handler
function meltdown:room_siren_handler
# Gate Close Handler (every sec)
function meltdown:gate_close_handler
# SCB Refresh
function meltdown:scoreboard/refresh
# Lock Spec
function meltdown:lockspec
# Other Handlers
function meltdown:other_handlers

# Modifier: Tick rate
execute if score modifiers_blitz meltdown_game matches 1 run tick rate 40
execute if score modifiers_blitz meltdown_game matches 1 run tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Blitz","color": "#E3E3E3"},"§b: Game runs at 40 tps."]
# Modifier: Spreading Chill
execute if score modifiers_spreading_chill meltdown_game matches 1 run function meltdown:modifiers/spreading_chill/init