
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_yellow,tag=divider]
execute as @a[team=yellow] at @s run spawnpoint
# Add a team phase
scoreboard players add yellow gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_yellowsb "§a§l当前房间: §rThe Crafting Trial"
# Play sound and title
execute as @a[team=yellow] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=yellow] times 20 40 20
title @a[team=yellow] subtitle ""
title @a[team=yellow] title "§e合成所需物品！"
# Give items
clear @a[team=yellow]
give @a[team=yellow] iron_sword{Unbreakable:1b,CanDestroy:[oak_wood,oak_log]}
give @a[team=yellow] iron_axe{Unbreakable:1b,CanDestroy:[oak_wood,oak_log]}
recipe give @a[team=yellow] loom
recipe give @a[team=yellow] firework_star

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon skeleton ~7 96 ~15 {Tags:["gr_yellow"],HandItems:[{Count:1b,id:"minecraft:bow"}]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon skeleton ~7 96 ~15 {Tags:["gr_yellow"],HandItems:[{Count:1b,id:"minecraft:bow"}]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon skeleton ~7 96 ~15 {Tags:["gr_yellow"],HandItems:[{Count:1b,id:"minecraft:bow"}]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon creeper ~22 96 ~18 {Tags:["gr_yellow"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon creeper ~22 96 ~18 {Tags:["gr_yellow"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon creeper ~22 96 ~18 {Tags:["gr_yellow"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon spider ~22 96 ~12 {Tags:["gr_yellow"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon spider ~22 96 ~12 {Tags:["gr_yellow"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon spider ~22 96 ~12 {Tags:["gr_yellow"]}

scoreboard objectives add gr_tmp_mobkill_skeleton minecraft.killed:skeleton
scoreboard objectives add gr_tmp_mobkill_creeper minecraft.killed:creeper
scoreboard objectives add gr_tmp_mobkill_spider minecraft.killed:spider

scoreboard players set @a[team=yellow] gr_tmp_mobkill_creeper 0
scoreboard players set @a[team=yellow] gr_tmp_mobkill_skeleton 0
scoreboard players set @a[team=yellow] gr_tmp_mobkill_spider 0
# 开始计时
scoreboard players set yellow gr_currenttime 0
function gr:rooms/7/yellow/time