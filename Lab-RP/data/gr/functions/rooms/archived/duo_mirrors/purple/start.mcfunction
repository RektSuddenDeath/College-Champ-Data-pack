
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~38 ~10 ~2 ~38 ~14 ~4 barrier
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~38 ~10 ~10 ~38 ~14 ~12 barrier
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~38 ~10 ~18 ~38 ~14 ~20 barrier
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~38 ~10 ~26 ~38 ~14 ~28 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~38 ~14 ~3 {Duration:9999999,Tags:["gr_closer"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~38 ~14 ~11 {Duration:9999999,Tags:["gr_closer"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~38 ~14 ~19 {Duration:9999999,Tags:["gr_closer"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~38 ~14 ~27 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~32 ~10 ~3 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~32 ~10 ~11 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~32 ~10 ~19 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~32 ~10 ~27 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_purple,tag=divider]
execute as @a[team=purple] at @s run spawnpoint
# Add a team phase
scoreboard players add purple gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_purplesb "§a§l当前房间: §rDuo Mirrors"
# Play sound and title
execute as @a[team=purple] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=purple] times 20 40 20
title @a[team=purple] subtitle ""
title @a[team=purple] title "§e到达另一边！"
# Give items
clear @a[team=purple]
# 开始计时
scoreboard players set purple gr_currenttime 0
function gr:rooms/8/purple/time