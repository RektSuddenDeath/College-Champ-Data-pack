
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
scoreboard players display name var_room_name gr_yellowsb "§a§l当前房间: §rBawk Jungle"
# Play sound and title
execute as @a[team=yellow] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=yellow] times 20 40 20
title @a[team=yellow] subtitle ""
title @a[team=yellow] title "§e击败所有动物！"
# Give items
clear @a[team=yellow]
give @a[team=yellow] iron_sword{Unbreakable:1b}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~4 101 ~3 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~5 101 ~14 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~10 100 ~24 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~19 101 ~28 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~27 101 ~22 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~28 101 ~12 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~22 102 ~10 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~17 103 ~15 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~16 103 ~12 {Tags:["yellow","grroom"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~21 101 ~1 {Tags:["yellow","grroom"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~27 107 ~18 {Tags:["yellow","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~21 107 ~22 {Tags:["yellow","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~15 109.5 ~13 {Tags:["yellow","grroom"],NoAI:1b}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~11 109 ~4 {Tags:["yellow","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~21 114 ~5 {Tags:["yellow","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~24 117 ~10 {Tags:["yellow","grroom"],NoAI:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~13 116 ~15 {Tags:["yellow","grroom"],NoAI:1b}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon chicken ~26 107 ~18 {Tags:["yellow","grroom"],NoAI:1b}
# 开始计时
scoreboard players set yellow gr_currenttime 0
function gr:rooms/4/yellow/time