
# Gameflag
scoreboard players set gameflag tgttos_game 1
scoreboard players set map tgttos_game 7

# Scoreboard
team modify placeholder_4 suffix "Industry"

# Reset chicken kill status
scoreboard objectives remove tgttos_finish
scoreboard objectives add tgttos_finish minecraft.killed:chicken

# Teleportation
gamemode adventure @a[team=!spec]

tp @a[team=red] -6940 110.00 -6986.5 90 0
tp @a[team=blue] -6940 110.00 -6987.5 90 0
tp @a[team=green] -6940 110.00 -6988.5 90 0
tp @a[team=yellow] -6940 110.00 -6989.5 90 0
tp @a[team=purple] -6940 110.00 -6990.5 90 0
tp @a[team=cyan] -6940 110.00 -6991.5 90 0
tp @a[team=pink] -6940 110.00 -6992.5 90 0
tp @a[team=orange] -6940 110.00 -6993.5 90 0
tp @a[team=spec] -6940 110.00 -6994.5 90 0
spawnpoint @a -6940 110 -6984 -270

fill -6942 110 -6983 -6939 112 -6998 barrier
fill -6941 110 -6984 -6940 112 -6997 air

# Give appropriate items
forceload add -6942 -6983 -6939 -6998
clear @a
schedule function tgttos:wool 2t
schedule function tgttos:givewool 4t


# Adjusts player status
effect clear @a
effect give @a resistance 100000 6 true
effect give @a night_vision 100000 6 true

execute as @a[team=!spec] run attribute @s generic.attack_damage base set -100

# Summons chicken at the finish line
execute if score feed_mode_active tgttos_game matches 0 run execute as @a[team=!spec] run summon chicken -7006 119 -6991 {Health:100,active_effects:[{id:"speed",amplifier:9,duration:200}]}

execute if score feed_mode_active tgttos_game matches 1 run execute as @a[team=!spec] run summon chicken -7006 119 -6991 {Health:100,active_effects:[{id:"speed",amplifier:9,duration:200}],Invulnerable:1b}

# Counts players
scoreboard players set Finished tgttos_game 0
scoreboard players set TotalPlayers tgttos_game 0
execute as @a[team=!spec] run scoreboard players add TotalPlayers tgttos_game 1

# Schedule Function
function master:timer/starting/20s
schedule function tgttos:intro/timeannounce/10 10s
schedule function tgttos:intro/timeannounce/9 11s
schedule function tgttos:intro/timeannounce/8 12s
schedule function tgttos:intro/timeannounce/7 13s
schedule function tgttos:intro/timeannounce/6 14s
schedule function tgttos:intro/timeannounce/5 15s
schedule function tgttos:intro/timeannounce/4 16s
schedule function tgttos:intro/timeannounce/3 17s
schedule function tgttos:intro/timeannounce/2 18s
schedule function tgttos:intro/timeannounce/1 19s
schedule function tgttos:map/industry/start 20s

# Avoids spawn placing until game is on
function tgttos:map/industry/noplace

# Resets scorings
scoreboard players set TeamBonus1 tgttos_game 0
scoreboard players set TeamBonus2 tgttos_game 0
scoreboard players set TeamBonus3 tgttos_game 0
scoreboard players operation currentfinish tgttos_scorings = finish tgttos_scorings

item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:30322},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16757504},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1}]} 1 

# Glowing
effect give @a[team=!spec] glowing infinite 0 true