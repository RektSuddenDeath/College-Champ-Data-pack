
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_blue,tag=divider]
execute as @a[team=blue] at @s run spawnpoint
# Add a team phase
scoreboard players add blue gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_bluesb "§a§l当前房间: §rPlatform Lamps"
# Play sound and title
execute as @a[team=blue] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=blue] times 20 40 20
title @a[team=blue] subtitle ""
title @a[team=blue] title "§e点亮红石灯！"
# Give items
clear @a[team=blue]
# 开始计时
scoreboard players set blue gr_currenttime 0
function gr:rooms/8/blue/time