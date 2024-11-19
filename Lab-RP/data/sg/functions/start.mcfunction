# Clears schedule
schedule clear sg:beginlistener

# Changes gamerule
execute in sg:sjtu run gamerule fallDamage true

# Grace Period
effect give @a instant_health 600 9 true
effect give @a saturation 600 1 true
effect give @a resistance 30 5 true

# Gameflag
scoreboard players set RoundActive tourney_stats 1
scoreboard players set gameflag sg_game 1
scoreboard players set gamephase sg_game 1
scoreboard players set OvertimeActive sg_game 0
# Visual
title @a title ""
title @a subtitle ""
execute as @a at @s run playsound minecraft:sound.start record @s

# Remove Barrier
execute in sg:sjtu run place template sg:center_nobarrier 593 7 1365

# fireworks
function utils:firework_death_init

# Item Tag
function sg:item_tags/init

# Scoreboard
function sg:scoreboard/playerinit

# Saves team count and player count, for final summary.
scoreboard players operation teamCount sg_game = teamsLeft sg_game
scoreboard players operation playerCount sg_game = playersLeft sg_game

scoreboard objectives add sg_teampos dummy
scoreboard objectives add sg_indvpos dummy

execute as @a[team=!spec] run scoreboard players operation @s sg_indvpos = playerCount sg_game
execute as @a[team=!spec] run scoreboard players operation @s sg_teampos = teamCount sg_game

# Loot
function sg:chest/placeloot

# Bossbar

bossbar add sg_timebar ""
bossbar set sg_timebar players @a
bossbar set sg_timebar color pink
bossbar set sg_timebar visible true

## Timer
function sg:subtimer/init
function master:timer/timeleft/12min

# Music
function sg:music/init

# Time Control
function sg:timing/core

# Cake Game modifiers?
execute if score modifier_cake_lighters sg_game matches 1 run function sg:cake_lighters/init
# Kill Control
## Initiate

function utils:combattag/reset
function sg:tick
function utils:combattag/init



# Other stuff ran every tick


# Glowing
effect give @a[team=!spec] glowing infinite 0 true

# Display Entites
#function sg:chest/change_display

# Compass
function sg:airdrop/modify_compass


# Modifers: Multi Manipulate
execute if score modifiers_chaos_multi tourney_stats matches 1 run function sg:modifiers/multiplier_manip/init