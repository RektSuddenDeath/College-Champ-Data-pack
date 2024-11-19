
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_red,tag=divider]
execute as @a[team=red] at @s run spawnpoint
# Add a team phase
scoreboard players add red gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_redsb "§a§l当前房间: §rBawk Jungle"
# Play sound and title
execute as @a[team=red] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=red] times 20 40 20
title @a[team=red] subtitle ""
title @a[team=red] title "§e击败所有动物！"
# Give items
clear @a[team=red]
give @a[team=red] iron_sword{Unbreakable:1b}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~4 101 ~3 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~5 101 ~14 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~10 100 ~24 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~19 101 ~28 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~27 101 ~22 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~28 101 ~12 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~22 102 ~10 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~17 103 ~15 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~16 103 ~12 {Tags:["red","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~21 101 ~1 {Tags:["red","grroom"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~27 107 ~18 {Tags:["red","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~21 107 ~22 {Tags:["red","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~15 109.5 ~13 {Tags:["red","grroom"],NoAI:1b}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~11 109 ~4 {Tags:["red","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~21 114 ~5 {Tags:["red","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~24 117 ~10 {Tags:["red","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~13 116 ~15 {Tags:["red","grroom"],NoAI:1b}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon chicken ~26 107 ~18 {Tags:["red","grroom"],NoAI:1b}
# 开始计时
scoreboard players set red gr_currenttime 0
function gr:rooms/4/red/time