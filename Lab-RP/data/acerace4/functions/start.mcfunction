
scoreboard players set RoundActive tourney_stats 1

schedule clear master:timer/starting/sec
schedule clear acerace4:beginlistener
stopsound @a voice minecraft:music.gameintro

title @a title ""
title @a subtitle " "

# Objective setup
scoreboard objectives remove ar_laptime
scoreboard objectives add ar_laptime dummy
scoreboard players set @a ar_laptime 0

# Section time
scoreboard objectives add ar_sectime dummy
scoreboard players set @a ar_sectime 0

## Difference
scoreboard objectives add ar_secdif dummy
scoreboard objectives add ar_secdif_sgn dummy
scoreboard objectives add ar_secdif_m dummy
scoreboard objectives add ar_secdif_s dummy
scoreboard objectives add ar_secdif_ms dummy

## 8 Section times
scoreboard objectives add ar_sec1time dummy
scoreboard objectives add ar_sec2time dummy
scoreboard objectives add ar_sec3time dummy
scoreboard objectives add ar_sec4time dummy
scoreboard objectives add ar_sec5time dummy
scoreboard objectives add ar_sec6time dummy
scoreboard objectives add ar_sec7time dummy
scoreboard objectives add ar_sec8time dummy
scoreboard objectives add ar_sec9time dummy

scoreboard players set @a ar_sec1time 0
scoreboard players set @a ar_sec2time 0
scoreboard players set @a ar_sec3time 0
scoreboard players set @a ar_sec4time 0
scoreboard players set @a ar_sec5time 0
scoreboard players set @a ar_sec6time 0
scoreboard players set @a ar_sec7time 0
scoreboard players set @a ar_sec8time 0
scoreboard players set @a ar_sec9time 0

## Actionbar cd
scoreboard objectives add ar_actionbarcd dummy
scoreboard players set @a ar_actionbarcd 0
## Zero paddings
scoreboard objectives add ar_zeropad_s dummy
scoreboard objectives add ar_zeropad_ms dummy

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
scoreboard objectives remove ar_lap4time
scoreboard objectives add ar_lap1time dummy
scoreboard objectives add ar_lap2time dummy
scoreboard objectives add ar_lap3time dummy
scoreboard objectives add ar_lap4time dummy
scoreboard players set @a ar_lap1time -1
scoreboard players set @a ar_lap2time -1
scoreboard players set @a ar_lap3time -1
scoreboard players set @a ar_lap4time -1
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
spawnpoint @a -49994 101 -50004 0
scoreboard objectives add ar_cp dummy
scoreboard players set @a ar_cp 0

# Removes glass, plays sound
fill -50007 101 -50009 -49982 104 -50009 air
fill -49982 104 -50003 -50004 101 -50003 air

#effect give @a night_vision infinite 0 true
effect give @a resistance infinite 6 true

stopsound @a voice
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1

scoreboard players set musictick ar_game -1
function acerace4:sfx/loop

# scoreboard objectives remove ar_indvtime
# scoreboard objectives add ar_indvtime dummy "Individual Timers"
scoreboard players operation 当前完赛 acerace_stats = 第一个完赛 acerace_stats

#Activates effect blocks

scoreboard objectives add ar_speedpad dummy
scoreboard players set @a ar_speedpad 0


function acerace4:effectblock/unelytra
function acerace4:effectblock/speed5
function acerace4:effectblock/jump10
function acerace4:effectblock/jump20
#function utils:launchpad/loop

scoreboard objectives add ar_aqualauncher dummy
scoreboard players set @a ar_aqualauncher 0
#function acerace4:effectblock/aqualauncher
# Timing point
function master:timer/timeleft/10min
function acerace4:timing/master
function acerace4:scoreboard/refresh
#
##BOAT

scoreboard players set OvertimeActive OvertimeMusic 0

item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:65514},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16760576},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1 

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7ACE_RACE_PRE_GAME§f -> ACE_RACE_IN_GAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]