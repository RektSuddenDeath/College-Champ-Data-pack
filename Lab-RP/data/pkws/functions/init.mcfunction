
# Default paras
scoreboard objectives add pkws_game dummy
scoreboard players set gameflag pkws_game 0

scoreboard players set players pkws_game 0
execute as @a[team=!spec] run scoreboard players add players pkws_game 1

## Max leaps is defaulted to 9.
scoreboard players set teams pkws_game 0
execute unless score leaps pkws_game matches -2147483648..2147483647 run scoreboard players set leaps pkws_game 9
scoreboard players set current_leap pkws_game 0

## DETECTS IF THE MAP IS PROPERLY INITIATED (WIP)

##

# Each leap qualifies allowed, also sets the final leap.
scoreboard objectives add pkws_qualify_limit_max dummy
scoreboard objectives add pkws_qualify_limit dummy
function pkws:init_functions/qualify_limit

# Player Progress
scoreboard objectives add pkws_player_checkpoint dummy
scoreboard objectives add pkws_player_obstacle_title dummy
scoreboard players set @a pkws_player_checkpoint 0
scoreboard players set @a pkws_player_obstacle_title 0

scoreboard objectives add pkws_player_title_delay dummy
scoreboard players set @a pkws_player_title_delay 20

# Scores
scoreboard objectives add pkws_indvscore dummy
scoreboard players set @a pkws_indvscore 0

scoreboard objectives add pkws_teamscore dummy

# Round Placements
scoreboard objectives remove pkws_leap_placement_1
scoreboard objectives remove pkws_leap_placement_2
scoreboard objectives remove pkws_leap_placement_3
scoreboard objectives remove pkws_leap_placement_4
scoreboard objectives remove pkws_leap_placement_5
scoreboard objectives remove pkws_leap_placement_6
scoreboard objectives remove pkws_leap_placement_7
scoreboard objectives remove pkws_leap_placement_8
scoreboard objectives remove pkws_leap_placement_9
scoreboard objectives remove pkws_leap_placement_10
scoreboard objectives remove pkws_leap_placement_11
scoreboard objectives remove pkws_leap_placement_12

scoreboard objectives add pkws_leap_placement_1 dummy
scoreboard objectives add pkws_leap_placement_2 dummy
scoreboard objectives add pkws_leap_placement_3 dummy
scoreboard objectives add pkws_leap_placement_4 dummy
scoreboard objectives add pkws_leap_placement_5 dummy
scoreboard objectives add pkws_leap_placement_6 dummy
scoreboard objectives add pkws_leap_placement_7 dummy
scoreboard objectives add pkws_leap_placement_8 dummy
scoreboard objectives add pkws_leap_placement_9 dummy
scoreboard objectives add pkws_leap_placement_10 dummy
scoreboard objectives add pkws_leap_placement_11 dummy
scoreboard objectives add pkws_leap_placement_12 dummy

# Leap Damage Delay
scoreboard objectives add pkws_leap_damage_delay dummy
scoreboard players set $damage_delay pkws_leap_damage_delay 60
scoreboard players set @a pkws_leap_damage_delay -1


