
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

# Modify scoreboard
scoreboard players display name var_room_name gr_cyansb "§a§l当前房间: §rAncient City"
# Play sound and title
execute as @a[team=cyan] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=cyan] times 20 40 20
title @a[team=cyan] subtitle ""
title @a[team=cyan] title "§e点亮红石灯！"
# Give items
clear @a[team=cyan]
give @a[team=cyan] iron_sword{Unbreakable:1b}
effect clear @a[team=cyan] night_vision
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon warden ~16 ~9 ~15
execute as @e[type=warden,tag=!grroom] run data modify entity @s Health set value 50f
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run tag @e[type=warden,tag=!grroom] add cyan
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run tag @e[type=warden,tag=!grroom] add grroom
# 开始计时
scoreboard players set cyan gr_currenttime 0
function gr:rooms/3/cyan/time