
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_pink,tag=divider]
execute as @a[team=pink] at @s run spawnpoint
# Add a team phase
scoreboard players add pink gr_teamphase 1

# Summon Mobs
kill @e[tag=pink,tag=desertedvillagemob]
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:zombie ~22 ~10 ~17 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:zombie ~18 ~10 ~22 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:zombie ~4 ~10 ~8 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:skeleton ~29 ~11 ~6 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:bow",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
## In Dungeon
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:zombie ~23 ~3 ~8 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:zombie ~18 ~3 ~8 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:zombie ~14 ~3 ~8 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:spider ~23 ~3 ~8 {CanPickUpLoot:0b,Health:20,Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:spider ~18 ~3 ~8 {CanPickUpLoot:0b,Health:20,Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:zombie ~15 ~3 ~18 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:wooden_sword",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:skeleton ~15 ~3 ~18 {CanPickUpLoot:0b,Health:20,HandItems:[{},{id:"minecraft:bow",Count:1}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1}],Tags:["pink","desertedvillagemob"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon minecraft:spider ~15 ~3 ~18 {CanPickUpLoot:0b,Health:20,Tags:["pink","desertedvillagemob"]}

# Modify scoreboard
scoreboard players display name var_room_name gr_pinksb "§a§l当前房间: §rDeserted Village"
# Play sound and title
execute as @a[team=pink] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=pink] times 20 40 20
title @a[team=pink] subtitle ""
title @a[team=pink] title "§e击杀所有怪物！"
# Give items
clear @a[team=pink]
give @a[team=pink] iron_sword{Enchantments:[{id:"sharpness",lvl:1}],Unbreakable:1b}
# 开始计时
scoreboard players set pink gr_currenttime 0
function gr:rooms/2/pink/time