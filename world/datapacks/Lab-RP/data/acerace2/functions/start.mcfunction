
scoreboard players set RoundActive tourney_stats 1

schedule clear master:timer/starting/sec
schedule clear acerace2:beginlistener
stopsound @a voice minecraft:music.gameintro

title @a title ""
title @a subtitle " "

# Objective setup
scoreboard objectives remove ar_laptime
scoreboard objectives add ar_laptime dummy
scoreboard players set @a ar_laptime 0

## All times are stored in 50 ms (1 gametick). For display reason the last digit is ignored.
scoreboard objectives remove ar_totaltime
scoreboard objectives add ar_totaltime dummy
scoreboard players set ms ar_totaltime 0

## These are used to display player's final performance, digit by digit.
scoreboard objectives remove ar_finaltime_min
scoreboard objectives remove ar_finaltime_sec
scoreboard objectives remove ar_finaltime_ms

scoreboard objectives add ar_finaltime_min dummy
scoreboard objectives add ar_finaltime_sec dummy
scoreboard objectives add ar_finaltime_ms dummy

## For laps
scoreboard objectives remove ar_laps
scoreboard objectives add ar_laps dummy
scoreboard players set @a ar_laps 1

## Players' position
scoreboard objectives remove ar_pos
scoreboard objectives add ar_pos dummy "Race Positions"
scoreboard players set @a ar_pos 0

## Store each player's 3 laps time, and is displayed upon completion.
scoreboard objectives remove ar_lap1time
scoreboard objectives remove ar_lap2time
scoreboard objectives remove ar_lap3time
scoreboard objectives add ar_lap1time dummy
scoreboard objectives add ar_lap2time dummy
scoreboard objectives add ar_lap3time dummy
scoreboard players set @a ar_lap1time -1
scoreboard players set @a ar_lap2time -1
scoreboard players set @a ar_lap3time -1

## Timing Point
scoreboard objectives add ar_timing dummy
scoreboard players set @a ar_timing 0

## Best Time
scoreboard objectives remove ar_bestlaptime
scoreboard objectives add ar_bestlaptime dummy

scoreboard players set 1 ar_bestlaptime 2147483647
scoreboard players set 2 ar_bestlaptime 2147483647
scoreboard players set 3 ar_bestlaptime 2147483647
scoreboard players set 4 ar_bestlaptime 2147483647
scoreboard players set 5 ar_bestlaptime 2147483647

## Temporary items. Serve for displaying time
scoreboard objectives add ar_temp1 dummy
scoreboard objectives add ar_temp2 dummy
scoreboard objectives add ar_temp3 dummy
# Flags
scoreboard players set gameflag ar_game 1
difficulty peaceful
gamerule naturalRegeneration true
spawnpoint @a 4002 135 4011
scoreboard objectives add ar_cp dummy
scoreboard players set @a ar_cp 0

# Removes glass, plays sound
fill 3989 135 4013 4012 142 4013 air
fill 4012 142 4009 3989 135 4009 air

effect give @a night_vision 100000 0 true
effect give @a resistance 1000000 6 true
effect give @a dolphins_grace 1000000 0 true
# execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 2
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1
schedule function master:sfx/acerace 1s

# scoreboard objectives remove ar_indvtime
# scoreboard objectives add ar_indvtime dummy "Individual Timers"
scoreboard players operation 当前完赛 acerace_stats = 第一个完赛 acerace_stats

#Starts Timer
#function acerace2:timer/time

#Give proper items
give @a[team=!spec] trident{Unbreakable:1,Damage:0,Enchantments:[{id:"riptide",lvl:4}]} 1

#Activates effect blocks

scoreboard objectives add ar_speedpad dummy
scoreboard players set @a ar_speedpad 0

function acerace2:effectblock/elytra
function acerace2:effectblock/unelytra
function acerace2:effectblock/speed5
function acerace2:effectblock/jump10
function acerace2:effectblock/jump20
function utils:launchpad/loop

# Timing point
function master:timer/timeleft/10min
function acerace2:timing/master
#

##BOAT


item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:65514},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16760576},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1 

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7ACE_RACE_PRE_GAME§f -> ACE_RACE_IN_GAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]