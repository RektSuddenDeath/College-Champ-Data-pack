
scoreboard players set gameflag tgttos_game 0
scoreboard players set round tgttos_game 0

scoreboard players set round_time_tick tgttos_game 0
scoreboard players set round_time_second tgttos_game 0
scoreboard players set round_time_minute tgttos_game 0

# Modifies scoreboard
function tgttos:scoreboard/pregame

# Game Recap Component
scoreboard objectives add tgttos_recap_r1 dummy
scoreboard objectives add tgttos_recap_r2 dummy
scoreboard objectives add tgttos_recap_r3 dummy
scoreboard objectives add tgttos_recap_r4 dummy
scoreboard objectives add tgttos_recap_r5 dummy
scoreboard objectives add tgttos_recap_r6 dummy

scoreboard players set @a tgttos_recap_r1 0
scoreboard players set @a tgttos_recap_r2 0
scoreboard players set @a tgttos_recap_r3 0
scoreboard players set @a tgttos_recap_r4 0
scoreboard players set @a tgttos_recap_r5 0
scoreboard players set @a tgttos_recap_r6 0

scoreboard objectives add tgttos_recap_punches dummy
scoreboard players set @a tgttos_recap_punches 0

scoreboard objectives add tgttos_recap_deaths dummy
scoreboard players set @a tgttos_recap_deaths 0

advancement revoke @a only utils:dealt_damage_to_player

scoreboard objectives add tgttos_recap_played dummy
scoreboard players set @a tgttos_recap_played 0

# Play Intro
function tgttos:intro/1
function tgttos:intro/hold
schedule function tgttos:intro/2 2s
schedule function tgttos:intro/3 4s
schedule function tgttos:intro/4 12s
schedule function tgttos:intro/5 20s
schedule function tgttos:intro/6 28s
schedule function tgttos:intro/7 36s
schedule function tgttos:intro/8 42s

# Start up the first map Cavern Drive

schedule function tgttos:start_next_round 42s

# Clean up previous game status

scoreboard objectives remove tgttos_indvscore
scoreboard objectives remove tgttos_teamscore
scoreboard objectives add tgttos_indvscore dummy
scoreboard objectives add tgttos_teamscore dummy

scoreboard objectives add tgttos_kills dummy
scoreboard players set @a tgttos_kills 0

scoreboard objectives add dropseed minecraft.dropped:wheat_seeds
# Setup scores
scoreboard objectives add tgttos_scorings dummy
scoreboard players set finish tgttos_scorings 32
scoreboard players set rankdeduct tgttos_scorings 1
scoreboard players set TeamBonus1 tgttos_scorings 30
scoreboard players set TeamBonus2 tgttos_scorings 20
scoreboard players set TeamBonus3 tgttos_scorings 15

# Teams Completed
scoreboard players set teams_completed tgttos_game 0

# No Dropping
function utils:nodropping
# Booties
