

scoreboard objectives add rrr_game dummy
scoreboard players set gameflag rrr_game 0
scoreboard players set gold_rush_round rrr_game 0
# Score Component
scoreboard objectives remove rrr_teamscore
scoreboard objectives add rrr_teamscore dummy

# Distance
scoreboard objectives remove rrr_distance_final
scoreboard objectives remove rrr_distance_max
scoreboard objectives remove rrr_distance_this

scoreboard objectives add rrr_distance_final dummy
scoreboard objectives add rrr_distance_max dummy
scoreboard objectives add rrr_distance_this dummy

# Gold Rush
scoreboard objectives remove rrr_gold_rush_round_1
scoreboard objectives remove rrr_gold_rush_round_2
scoreboard objectives remove rrr_gold_rush_round_3

scoreboard objectives add rrr_gold_rush_round_1 dummy
scoreboard objectives add rrr_gold_rush_round_2 dummy
scoreboard objectives add rrr_gold_rush_round_3 dummy

# Emerald Mined
scoreboard objectives add rrr_emerald_personal mined:emerald_ore
scoreboard players set @a rrr_emerald_personal 0
scoreboard objectives add rrr_gold_personal mined:gold_ore
scoreboard players set @a rrr_gold_personal 0

scoreboard objectives add rrr_emerald_team dummy
scoreboard players set red rrr_emerald_team 0
scoreboard players set blue rrr_emerald_team 0
scoreboard players set green rrr_emerald_team 0
scoreboard players set yellow rrr_emerald_team 0
scoreboard players set cyan rrr_emerald_team 0
scoreboard players set pink rrr_emerald_team 0
scoreboard players set orange rrr_emerald_team 0
scoreboard players set purple rrr_emerald_team 0

scoreboard objectives add rrr_gold_team dummy

# Rail Type
scoreboard objectives add rrr_last_rail dummy
scoreboard objectives add rrr_this_rail dummy

# Cart Call Device
scoreboard objectives add rrr_call_device used:ender_pearl
scoreboard players set @a rrr_call_device 0
# Checkpoints
scoreboard objectives remove rrr_checkpoint_reached
scoreboard objectives add rrr_checkpoint_reached dummy
scoreboard players set red rrr_checkpoint_reached -1
scoreboard players set blue rrr_checkpoint_reached -1
scoreboard players set green rrr_checkpoint_reached -1
scoreboard players set yellow rrr_checkpoint_reached -1
scoreboard players set cyan rrr_checkpoint_reached -1
scoreboard players set pink rrr_checkpoint_reached -1
scoreboard players set orange rrr_checkpoint_reached -1
scoreboard players set purple rrr_checkpoint_reached -1

# Next Dynamite Minecart CD
scoreboard objectives add rrr_minecart_cd dummy
scoreboard players set red rrr_minecart_cd 40
scoreboard players set blue rrr_minecart_cd 40
scoreboard players set green rrr_minecart_cd 40
scoreboard players set yellow rrr_minecart_cd 40
scoreboard players set cyan rrr_minecart_cd 40
scoreboard players set pink rrr_minecart_cd 40
scoreboard players set orange rrr_minecart_cd 40
scoreboard players set purple rrr_minecart_cd 40

# Race
scoreboard objectives remove rrr_race_position
scoreboard objectives add rrr_race_position dummy
## 矿车上一次增加距离所用时间和距离锚定，若此时间超过8秒则判定轨道成环，使矿车立刻终止。
scoreboard objectives remove rrr_race_distance_max
scoreboard objectives add rrr_race_distance_max dummy
scoreboard objectives remove rrr_race_last_advance
scoreboard objectives add rrr_race_last_advance dummy
## Internal
scoreboard objectives add rrr_minecart_power dummy
scoreboard objectives add rrr_minecart_stationaries dummy

# Game General Settings
difficulty easy
function utils:survivalregen

# Init Transfer
function railroadrush:init_transfer

# Default Anchor
kill @e[type=minecart,tag=rrr_minecart]
kill @e[type=marker,tag=rrr_main_anchor]
summon marker 80000 100 80000 {Tags:["rrr_main_anchor","team_red"]}
summon marker 80000 100 80046 {Tags:["rrr_main_anchor","team_blue"]}
summon marker 80000 100 80092 {Tags:["rrr_main_anchor","team_green"]}
summon marker 80000 100 80138 {Tags:["rrr_main_anchor","team_yellow"]}
summon marker 80000 100 80184 {Tags:["rrr_main_anchor","team_cyan"]}
summon marker 80000 100 80230 {Tags:["rrr_main_anchor","team_pink"]}
summon marker 80000 100 80276 {Tags:["rrr_main_anchor","team_orange"]}
summon marker 80000 100 80322 {Tags:["rrr_main_anchor","team_purple"]}

# Tutorial (Checkpoint 0) setup
kill @e[type=villager,tag=rrr_shop]
function railroadrush:checkpoint/0/red/setup
function railroadrush:checkpoint/0/blue/setup
function railroadrush:checkpoint/0/green/setup
function railroadrush:checkpoint/0/yellow/setup
function railroadrush:checkpoint/0/cyan/setup
function railroadrush:checkpoint/0/pink/setup
function railroadrush:checkpoint/0/orange/setup
function railroadrush:checkpoint/0/purple/setup

# SCB
function railroadrush:scoreboard/init
function railroadrush:beginlistener

# Set Score
function railroadrush:setscore
# Kit
clear @a
effect clear @a
schedule function railroadrush:default_kit 4s
# Intro
schedule function railroadrush:intro/1 2s
schedule function railroadrush:intro/2 4s
schedule function railroadrush:intro/3 6s
schedule function railroadrush:intro/4 14s
schedule function railroadrush:intro/5 22s
schedule function railroadrush:intro/6 30s
schedule function railroadrush:intro/7 38s
schedule function railroadrush:intro/8 46s
schedule function railroadrush:intro/9 54s

# load chunks

# May drop
scoreboard players set may_drop_items tourney_stats 0

# Halloween
time set 12500