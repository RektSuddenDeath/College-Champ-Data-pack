
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~38 ~10 ~6 ~38 ~14 ~8 barrier
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~38 ~10 ~22 ~38 ~14 ~24 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~38 ~14 ~7 {Duration:9999999,Tags:["gr_closer"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~32 ~10 ~7 {Duration:9999999,Tags:["gr_opener"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~38 ~14 ~23 {Duration:9999999,Tags:["gr_closer"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~32 ~10 ~23 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_purple,tag=divider]
execute as @a[team=purple] at @s run spawnpoint
# Add a team phase
scoreboard players add purple gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_purplesb "§a§l当前房间: §rGravity Palette"
# Play sound and title
execute as @a[team=purple] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=purple] times 20 40 20
title @a[team=purple] subtitle ""
title @a[team=purple] title "§e复制画板！"
# Give items
clear @a[team=purple]
# 开始计时
scoreboard players set purple gr_currenttime 0
function gr:rooms/6/purple/time