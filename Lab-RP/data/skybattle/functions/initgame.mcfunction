
# Objective setup
scoreboard objectives remove sba_kills
scoreboard objectives remove sba_death
#scoreboard objectives remove sba_game
scoreboard objectives remove sba_stats
scoreboard objectives remove sba_roundkills
scoreboard objectives remove sba_gamekills
scoreboard objectives remove sba_indvscore
scoreboard objectives remove sba_roundscore
scoreboard objectives remove sba_teamscore
scoreboard objectives remove sba_logout
scoreboard objectives remove sba_tntplace
scoreboard objectives remove sba_consecdmg

scoreboard objectives add sba_kills playerKillCount
scoreboard objectives add sba_death deathCount
scoreboard objectives add sba_game dummy
scoreboard objectives add sba_stats dummy
scoreboard objectives add sba_roundkills dummy
scoreboard objectives add sba_gamekills dummy
scoreboard objectives add sba_indvscore dummy
scoreboard objectives add sba_roundscore dummy
scoreboard objectives add sba_teamscore dummy
scoreboard objectives add sba_logout minecraft.custom:leave_game
scoreboard objectives add sba_tntplace minecraft.used:minecraft.tnt
scoreboard objectives add sba_consecdmg dummy

scoreboard players set @a sba_gamekills 0
worldborder set 10000000
## Special item
scoreboard objectives remove sba_bellring
scoreboard objectives add sba_bellring minecraft.custom:bell_ring

# Recap
scoreboard objectives add sba_recap_r1 dummy
scoreboard objectives add sba_recap_r2 dummy
scoreboard objectives add sba_recap_r3 dummy

scoreboard players set @a sba_recap_r1 0
scoreboard players set @a sba_recap_r2 0
scoreboard players set @a sba_recap_r3 0

scoreboard objectives add sba_recap_played dummy
scoreboard players set @a sba_recap_played 0

# Setup
## Scorings
scoreboard players set survival sba_stats 2
scoreboard players set kill sba_stats 55
scoreboard players set win sba_stats 60
scoreboard players set ringbell sba_stats 0

# Border Damage Inc Threshold
scoreboard players set border_inc_begin sba_game 30
scoreboard players set border_dmg_max sba_game 5

## Game Core
scoreboard players set gameflag sba_stats 0
## Other
scoreboard players set @a sba_indvscore 0
scoreboard players set @a sba_roundscore 0
scoreboard players set @a sba_roundkills 0

# Scoreboard
function skybattle:scoreboard/pregame
scoreboard objectives setdisplay below_name health
# Play Intro
schedule function skybattle:intro/1 5t
schedule function skybattle:intro/holdinit 6t
schedule function skybattle:intro/2 2s
schedule function skybattle:intro/3 4s
schedule function skybattle:intro/4 12s
schedule function skybattle:intro/5 20s
schedule function skybattle:intro/6 28s
schedule function skybattle:intro/7 36s
schedule function skybattle:intro/8 44s
schedule function skybattle:round/1/init 44s

# Forceload
forceload add 12000 12000
forceload add 13000 13000
forceload add 14000 14000
forceload add 22000 22000
forceload add 23000 23000
forceload add 24000 24000

execute if score map sba_game matches 1 run forceload add 11900 11900 12100 12100
execute if score map sba_game matches 1 run forceload add 12900 12900 13100 13100
execute if score map sba_game matches 1 run forceload add 13900 13900 14100 14100

execute if score map sba_game matches 2 run forceload add 21900 21900 22100 22100
execute if score map sba_game matches 2 run forceload add 22900 22900 23100 23100
execute if score map sba_game matches 2 run forceload add 23900 23900 24100 24100

execute if score map sba_game matches 3 run forceload add 31900 31900 32100 32100
execute if score map sba_game matches 3 run forceload add 32900 32900 33100 33100
execute if score map sba_game matches 3 run forceload add 33900 33900 34100 34100

execute if score map sba_game matches 4 run forceload add 41900 41900 42100 42100
execute if score map sba_game matches 4 run forceload add 42900 42900 43100 43100
execute if score map sba_game matches 4 run forceload add 43900 43900 44100 44100

time set day
execute if score map sba_game matches 3 run time set 12500
# Attributes
execute as @a run attribute @s generic.attack_damage base set 1
execute as @a run attribute @s generic.movement_speed base set 0.1
# debug

gamerule reducedDebugInfo true