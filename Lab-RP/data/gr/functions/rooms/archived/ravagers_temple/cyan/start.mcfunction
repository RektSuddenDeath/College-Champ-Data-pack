
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_cyan,tag=divider]
execute as @a[team=cyan] at @s run spawnpoint
# Add a team phase
scoreboard players add cyan gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_cyansb "§a§l当前房间: §rRavager's Temple"
# Play sound and title
execute as @a[team=cyan] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=cyan] times 20 40 20
title @a[team=cyan] subtitle ""
title @a[team=cyan] title "§e击败所有怪物！"
# Give items
clear @a[team=cyan]
give @a[team=cyan] iron_sword{Unbreakable:1b}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon ravager ~19 ~10 ~15 {Tags:["cyan","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon minecraft:zombie ~11 ~14 ~19 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["cyan","ravagerstemplemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon minecraft:zombie ~11 ~14 ~10 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["cyan","ravagerstemplemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon minecraft:skeleton ~11 ~14 ~3 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:bow",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["cyan","ravagerstemplemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon minecraft:pillager ~19 ~10 ~2 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:crossbow",Count:1}],ArmorItems:[{},{},{},{}],Tags:["cyan","ravagerstemplemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon minecraft:vindicator ~17 ~10 ~28 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:iron_axe",Count:1}],ArmorItems:[{},{},{},{}],Tags:["cyan","ravagerstemplemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon minecraft:skeleton ~22 ~13 ~23 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:bow",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["cyan","ravagerstemplemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon minecraft:pillager ~28 ~10 ~20 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:crossbow",Count:1}],ArmorItems:[{},{},{},{}],Tags:["cyan","ravagerstemplemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~28 ~10 ~3 {Tags:["cyan","grroom"]}

# 开始计时
scoreboard players set cyan gr_currenttime 0
function gr:rooms/2/cyan/time