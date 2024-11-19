
tag @s remove queue_freeze
tag @s add meltdown_frozen
execute store result storage meltdown_temp attacker_pid int 1 run scoreboard players operation @s meltdown_freezer = @s univ_attacker

# Store Killer and Victim's Team name for kill feed function use
execute if entity @s[team=red] run data modify storage meltdown_temp victim_team set value "red"
execute if entity @s[team=blue] run data modify storage meltdown_temp victim_team set value "blue"
execute if entity @s[team=green] run data modify storage meltdown_temp victim_team set value "green"
execute if entity @s[team=yellow] run data modify storage meltdown_temp victim_team set value "yellow"
execute if entity @s[team=cyan] run data modify storage meltdown_temp victim_team set value "cyan"
execute if entity @s[team=pink] run data modify storage meltdown_temp victim_team set value "pink"
execute if entity @s[team=orange] run data modify storage meltdown_temp victim_team set value "orange"
execute if entity @s[team=purple] run data modify storage meltdown_temp victim_team set value "purple"

# Kill Feed
function meltdown:freeze/macro_get_killer_team with storage meltdown_temp
function meltdown:freeze/macro_notif with storage meltdown_temp

function meltdown:freeze/find_safe_spot_init

title @s times 0 80 20
title @s title "§b被冻结"
title @s subtitle [""]

execute at @s run playsound sound.meltdown.frozen record @s
# Recap
scoreboard players add @s meltdown_recap_frozen 1
# 
execute unless score @s meltdown_temp_has_safe_spot matches 1 run scoreboard players set @s meltdown_fall_death_delay 10
scoreboard players set @s meltdown_last_fall_distance 0
scoreboard players set @s meltdown_heat 0

# Saves Inventory Slots
execute if entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Count:1b,Slot:-106b}]}] run tag @s add meltdown_map_in_offhand

execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:-106b}]}] run tag @s add meltdown_bow_in_offhand
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:0b}]}] run tag @s add meltdown_bow_in_slot_0
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:1b}]}] run tag @s add meltdown_bow_in_slot_1
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:2b}]}] run tag @s add meltdown_bow_in_slot_2
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:3b}]}] run tag @s add meltdown_bow_in_slot_3
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:4b}]}] run tag @s add meltdown_bow_in_slot_4
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:5b}]}] run tag @s add meltdown_bow_in_slot_5
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:6b}]}] run tag @s add meltdown_bow_in_slot_6
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:7b}]}] run tag @s add meltdown_bow_in_slot_7
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b,Slot:8b}]}] run tag @s add meltdown_bow_in_slot_8

execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:-106b}]}] run tag @s add meltdown_telepickaxe_in_offhand
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:0b}]}] run tag @s add meltdown_telepickaxe_in_slot_0
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:1b}]}] run tag @s add meltdown_telepickaxe_in_slot_1
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:2b}]}] run tag @s add meltdown_telepickaxe_in_slot_2
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:3b}]}] run tag @s add meltdown_telepickaxe_in_slot_3
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:4b}]}] run tag @s add meltdown_telepickaxe_in_slot_4
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:5b}]}] run tag @s add meltdown_telepickaxe_in_slot_5
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:6b}]}] run tag @s add meltdown_telepickaxe_in_slot_6
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:7b}]}] run tag @s add meltdown_telepickaxe_in_slot_7
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:8b}]}] run tag @s add meltdown_telepickaxe_in_slot_8

execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:-106b}]}] run tag @s add meltdown_telepickaxe_in_offhand
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:0b}]}] run tag @s add meltdown_telepickaxe_in_slot_0
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:1b}]}] run tag @s add meltdown_telepickaxe_in_slot_1
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:2b}]}] run tag @s add meltdown_telepickaxe_in_slot_2
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:3b}]}] run tag @s add meltdown_telepickaxe_in_slot_3
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:4b}]}] run tag @s add meltdown_telepickaxe_in_slot_4
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:5b}]}] run tag @s add meltdown_telepickaxe_in_slot_5
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:6b}]}] run tag @s add meltdown_telepickaxe_in_slot_6
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:7b}]}] run tag @s add meltdown_telepickaxe_in_slot_7
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Count:1b,Slot:8b}]}] run tag @s add meltdown_telepickaxe_in_slot_8

clear @s
item replace entity @s hotbar.0 with packed_ice
item replace entity @s hotbar.1 with packed_ice
item replace entity @s hotbar.2 with packed_ice
item replace entity @s hotbar.3 with packed_ice
item replace entity @s hotbar.4 with packed_ice
item replace entity @s hotbar.5 with packed_ice
item replace entity @s hotbar.6 with packed_ice
item replace entity @s hotbar.7 with packed_ice
item replace entity @s hotbar.8 with packed_ice

effect give @s slowness infinite 99 true
effect give @s jump_boost infinite 199 true

scoreboard players set @s meltdown_freeze_since 0
scoreboard players set @s meltdown_player_is_frozen 1
