
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
scoreboard players display name var_room_name gr_cyansb "§a§l当前房间: §rPork Pond"
# Play sound and title
execute as @a[team=cyan] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=cyan] times 20 40 20
title @a[team=cyan] subtitle ""
title @a[team=cyan] title "§e抓到所有猪！"
# Give items
clear @a[team=cyan]
give @a[team=cyan] fishing_rod{Unbreakable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon pig ~16 100 ~15 {active_effects:[{id:"minecraft:slow_falling",duration:40}],PersistenceRequired:true,Tags:["gr_rooms","cyan"]}

# 开始计时
scoreboard players set cyan gr_currenttime 0
function gr:rooms/3/cyan/time