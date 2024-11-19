
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

# Summon Mobs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~6 ~10 ~4 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~14 ~10 ~7 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~26 ~10 ~7 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~26 ~16 ~12 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~18 ~14 ~10 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~20 ~16 ~20 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~28 ~12 ~23 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~11 ~10 ~22 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~9 ~12 ~15 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~18 ~10 ~27 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~4 ~10 ~21 {powered:1b,NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon creeper ~5 ~14 ~27 {powered:1b,NoAI:1b}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run effect give @e[type=creeper,dx=32,dy=30,dz=28] invisibility 1000000 0 true
# Modify scoreboard
scoreboard players display name var_room_name gr_cyansb "§a§l当前房间: §rGhostly Mist"
# Play sound and title
execute as @a[team=cyan] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=cyan] times 20 40 20
title @a[team=cyan] subtitle ""
title @a[team=cyan] title "§e击杀所有怪物！"
# Give items
clear @a[team=cyan]
give @a[team=cyan] iron_sword{Enchantments:[{id:"sharpness",lvl:1}],Unbreakable:1b}
# 开始计时
scoreboard players set cyan gr_currenttime 0
function gr:rooms/3/cyan/time