
# Gameflag
scoreboard players set gameflag tgttos_game 1
scoreboard players set map tgttos_game 11

# Scoreboard
team modify placeholder_4 suffix "Shallow Lava"

# Reset chicken kill status
scoreboard objectives remove tgttos_finish
scoreboard objectives add tgttos_finish minecraft.killed:chicken

# Teleportation
gamemode adventure @a[team=!spec]

tp @a[team=red] -6925.07 102.00 -6497.08 -269.98 0.18
tp @a[team=blue] -6925.07 102.00 -6495.08 -269.98 0.18
tp @a[team=green] -6925.07 102.00 -6493.08 -269.98 0.18
tp @a[team=yellow] -6925.07 102.00 -6491.08 -269.98 0.18
tp @a[team=purple] -6925.07 102.00 -6489.08 -269.98 0.18
tp @a[team=pink] -6925.07 102.00 -6487.08 -269.98 0.18
tp @a[team=orange] -6925.07 102.00 -6485.08 -269.98 0.18
tp @a[team=cyan] -6925.07 102.00 -6483.08 -269.98 0.18
tp @a[team=spec] -6925.07 102.00 -6481.08 -269.98 0.18
spawnpoint @a -6925 102 -6487 -270

fill -6927 102 -6501 -6924 105 -6479 barrier
fill -6926 102 -6480 -6925 105 -6500 air


# Give appropriate items
forceload add -6927 -6501 -6924 -6479
clear @a
schedule function tgttos:wool 2t
schedule function tgttos:givewool 4t


# Adjusts player status
effect clear @a
effect give @a resistance 100000 6 true
effect give @a night_vision 100000 6 true
effect give @s fire_resistance 100000 0 true

execute as @a[team=!spec] run attribute @s generic.attack_damage base set -100

# Summons chicken at the finish line


execute if score feed_mode_active tgttos_game matches 0 run execute as @a[team=!spec] run summon chicken -7055 97 -6489 {Health:100,active_effects:[{id:"speed",amplifier:9,duration:200}]}
execute if score feed_mode_active tgttos_game matches 1 run execute as @a[team=!spec] run summon chicken -7055 97 -6489 {Health:100,active_effects:[{id:"speed",amplifier:9,duration:200}],Invulnerable:1b}

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
schedule function tgttos:map/shallowlava/start 20s

# Avoids spawn placing until game is on
function tgttos:map/shallowlava/noplace

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