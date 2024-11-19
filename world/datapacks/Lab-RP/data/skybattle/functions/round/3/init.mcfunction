
gamerule maxEntityCramming 100
execute if score map sba_game matches 1 run tp @a 14000 105 14000
execute if score map sba_game matches 2 run tp @a 24000 50 24000
execute if score map sba_game matches 3 run tp @a 34000 50 34000
execute if score map sba_game matches 4 run tp @a 44000 50 44000

# Map loading actionbar
title @a actionbar "§9§l正在载图"
# Round no.
scoreboard players set widthcd sba_game 0
scoreboard players set heightcd sba_game 2
scoreboard players set round sba_game 3
scoreboard players set gameflag sba_game 1

scoreboard players set overtime_notif_1 sba_game 0
scoreboard players set overtime_notif_2 sba_game 0
team modify placeholder_5 prefix ["",{"text": "回合: ","color": "green"}]
team modify placeholder_5 suffix ["",{"text": "3/3"}]
# Border Create, also generates the center
forceload add 14000 14000
forceload add 24000 24000
forceload add 34000 34000
forceload add 44000 44000

function skybattle:border/init3
# Teleport Players
effect give @a invisibility 1 0 true
effect give @a weakness 1 10 true
gamemode spectator @a
execute if score map sba_game matches 1 run schedule function skybattle:tp/classic 1s
execute if score map sba_game matches 2 run schedule function skybattle:tp/sandcastle 1s
execute if score map sba_game matches 3 run schedule function skybattle:tp/wasteland 1s
execute if score map sba_game matches 4 run schedule function skybattle:tp/cakesland 20t

# Clear Player states
difficulty peaceful

clear @a[team=!spec]
effect clear @a[team=!spec]
kill @e[type=creeper,tag=skybattlecreeper]

scoreboard players set @a sba_kills 0
scoreboard players set @a sba_death 0
scoreboard players set @a sba_roundkills 0
scoreboard players set @a sba_roundscore 0
# Give Kits
give @a[team=!spec] stone_sword
give @a[team=!spec] iron_pickaxe{Enchantments:[{id:"efficiency",lvl:3}],Unbreakable:1b}
give @a[team=!spec] cooked_beef 16
execute if score map sba_game matches 4 run give @a[team=!spec] bow{Unbreakable:1b} 1
item replace entity @a[team=!spec] armor.chest with iron_chestplate


# Enable gameflag

scoreboard players set pregame sba_game 1
# Clear unnecessary drops
function skybattle:cleardrop
execute if score modifier_chaos_bridge sba_game matches 1 run schedule clear skybattle:cleardrop

# Concrete replacement

give @a[team=red] red_concrete 64
give @a[team=blue] blue_concrete 64
give @a[team=green] green_concrete 64
give @a[team=yellow] yellow_concrete 64
give @a[team=cyan] cyan_concrete 64
give @a[team=orange] orange_concrete 64
give @a[team=pink] pink_concrete 64
give @a[team=purple] purple_concrete 64

function skybattle:concrete

execute if score modifier_chaos_bridge sba_game matches 1 run clear @a #railroadrush:concrete
execute if score modifier_chaos_bridge sba_game matches 1 run give @a suspicious_sand 64

execute if score modifier_chaos_bridge sba_game matches 1 run function skybattle:modifiers/chaos_bridge_override


# Scoreboard
schedule function skybattle:scoreboard/total 21t
schedule function skybattle:scoreboard/update 21t

# Init Time
function master:timer/starting/25s
function skybattle:round/inittime

# Spawnpoint
execute as @a[team=!spec] at @s run spawnpoint