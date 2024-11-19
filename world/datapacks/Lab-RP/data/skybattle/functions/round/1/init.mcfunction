
execute if score map sba_game matches 1 run tp @a 12000 35 12000
execute if score map sba_game matches 2 run tp @a 22000 35 22000
execute if score map sba_game matches 3 run tp @a 32000 35 32000
execute if score map sba_game matches 4 run tp @a 42000 35 42000

# Round no.
scoreboard players set widthcd sba_game 0
scoreboard players set heightcd sba_game 2
scoreboard players set round sba_game 1
scoreboard players set gameflag sba_game 1

scoreboard players set overtime_notif_1 sba_game 0
scoreboard players set overtime_notif_2 sba_game 0
# Border Create, also generates the center
forceload add 12000 12000
function skybattle:border/init1
# Teleport Players
execute if score map sba_game matches 1 run function skybattle:tp/classic
execute if score map sba_game matches 2 run function skybattle:tp/sandcastle
execute if score map sba_game matches 3 run function skybattle:tp/wasteland
execute if score map sba_game matches 4 run function skybattle:tp/cakesland

# Clear Player states
difficulty peaceful
gamemode adventure @a[team=!spec]
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
function skybattle:scoreboard/total
function skybattle:scoreboard/update

# Init Time
function skybattle:round/inittime

# Spawnpoint
execute as @a[team=!spec] at @s run spawnpoint