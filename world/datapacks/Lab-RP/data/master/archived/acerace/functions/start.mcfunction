
schedule clear master:timer/starting/sec
schedule clear acerace:intro/11a
title @a subtitle " "

#Flags
scoreboard players set gameflag ar_game 1
difficulty peaceful
gamerule naturalRegeneration true
spawnpoint @a -1000 101 -1000
scoreboard players set @a ar_cp2 0

# Removes glass, plays sound
fill -1002 101 -991 -1002 104 -1010 air
fill -998 104 -992 -997 101 -1010 air
execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 2

scoreboard objectives remove ar_indvtime
scoreboard objectives add ar_indvtime dummy "Individual Timers"
scoreboard players operation 当前完赛 acerace_stats = 第一个完赛 acerace_stats

#Starts Timer
function acerace:timer/time

#Gives Dolphins'Grace coz whynot

effect give @a dolphins_grace 1200 0 true

#Give proper items
give @a[team=!spec] trident{Unbreakable:1,Damage:0,Enchantments:[{id:"riptide",lvl:3}]} 1

#Activates effect blocks
function acerace:effectblock/elytra
function acerace:effectblock/unelytra
function acerace:effectblock/speed5
function acerace:effectblock/jump10
# function acerace:effectblock/boat
function acerace:effectblock/invincible

#Activates checkpoints
function acerace:checkpoint/1
function acerace:checkpoint/2
function acerace:checkpoint/3
function acerace:checkpoint/4

function acerace:finish

function master:timer/timeleft/10min
##BOAT


item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1},{id:"feather_falling",lvl:10}]} 1 

summon minecraft:armor_stand -1051 136.5 -992 {Invulnerable:1b,NoGravity:1b,Invisible:1b,Passengers:[{id:"minecart",Invulnerable:1b}]}
summon minecraft:armor_stand -1051 136.5 -995 {Invulnerable:1b,NoGravity:1b,Invisible:1b,Passengers:[{id:"minecart",Invulnerable:1b}]}
