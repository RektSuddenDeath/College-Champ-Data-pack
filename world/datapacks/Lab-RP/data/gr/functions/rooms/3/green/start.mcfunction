
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_green,tag=divider]
execute as @a[team=green] at @s run spawnpoint
# Add a team phase
scoreboard players add green gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_greensb "§a§l当前房间: §rIce and Fire"
# Play sound and title
execute as @a[team=green] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=green] times 20 40 20
title @a[team=green] subtitle ""
title @a[team=green] title "§e击败全部怪物！"
# Give items
clear @a[team=green]
give @a[team=green] diamond_shovel{Unbreakable:1b,CanDestroy:[snow_block,snow]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~11 101 ~3
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~6 101 ~6
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~2 104 ~7
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~7 102 ~12
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~7 102 ~15
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~7 102 ~19
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~2 104 ~23
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~7 101 ~26
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~11 101 ~29
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon blaze ~10 102 ~22

execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run execute as @e[type=blaze,tag=!grroom] run data modify entity @s Health set value 10f
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run tag @e[type=blaze,tag=!grroom] add green
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run tag @e[type=blaze,tag=!grroom] add grroom

# 开始计时
scoreboard players set green gr_currenttime 0
function gr:rooms/3/green/time