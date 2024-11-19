
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run fill ~38 ~10 ~2 ~38 ~14 ~4 barrier
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run fill ~38 ~10 ~10 ~38 ~14 ~12 barrier
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run fill ~38 ~10 ~18 ~38 ~14 ~20 barrier
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run fill ~38 ~10 ~26 ~38 ~14 ~28 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~38 ~14 ~3 {Duration:9999999,Tags:["gr_closer"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~38 ~14 ~11 {Duration:9999999,Tags:["gr_closer"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~38 ~14 ~19 {Duration:9999999,Tags:["gr_closer"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~38 ~14 ~27 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~32 ~10 ~3 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~32 ~10 ~11 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~32 ~10 ~19 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~32 ~10 ~27 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_red,tag=divider]
execute as @a[team=red] at @s run spawnpoint

# Status Effects
scoreboard players set @a[team=red] univ_death 0
effect clear @a[team=red] resistance
effect give @a[team=red] absorption infinite 1 true
execute as @a[team=red] run attribute @s generic.max_health base set 1.0

# Add a team phase
scoreboard players add red gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_redsb "§a§l当前房间: §rSunken Chambers"
# Play sound and title
execute as @a[team=red] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=red] times 20 40 20
title @a[team=red] subtitle ""
title @a[team=red] title "§e点亮红石灯！"
# Give items
clear @a[team=red]
# 开始计时
scoreboard players set red gr_currenttime 0
function gr:rooms/8/red/time