
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
scoreboard players display name var_room_name gr_cyansb "§a§l当前房间: §rPottery Hunt"
# Play sound and title
execute as @a[team=cyan] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=cyan] times 20 40 20
title @a[team=cyan] subtitle ""
title @a[team=cyan] title "§e合成陶罐！"
# Give items
clear @a[team=cyan]
give @a[team=cyan] brush{Unbreakable:1b,CanPlaceOn:[suspicious_sand]}
give @a[team=cyan] iron_shovel{Unbreakable:1b,CanDestroy:[gravel,sand,decorated_pot],Enchantments:[{id:"efficiency",lvl:2}],display:{Name:'"§r铁锹 （可破坏沙子、沙砾、陶罐）"'}}
# 开始计时
scoreboard players set cyan gr_currenttime 0
function gr:rooms/8/cyan/time