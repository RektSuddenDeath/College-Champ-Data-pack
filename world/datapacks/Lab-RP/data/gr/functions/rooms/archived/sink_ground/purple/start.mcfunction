
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_purple,tag=divider]
execute as @a[team=purple] at @s run spawnpoint
# Add a team phase
scoreboard players add purple gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_purplesb "§a§l当前房间: §rSink Ground"
# Play sound and title
execute as @a[team=purple] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=purple] times 20 40 20
title @a[team=purple] subtitle ""
title @a[team=purple] title "§e到达另一边！"
# Give items
clear @a[team=purple]

execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon item ~4 108 ~5 {Age:-32767s,Item:{Count:1b,id:"leather_boots",tag:{Unbreakable:1b}}}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon item ~22 106 ~10 {Age:-32767s,Item:{Count:1b,id:"leather_boots",tag:{Unbreakable:1b}}}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon item ~14 94 ~20 {Age:-32767s,Item:{Count:1b,id:"leather_boots",tag:{Unbreakable:1b}}}

# 开始计时
scoreboard players set purple gr_currenttime 0
function gr:rooms/8/purple/time