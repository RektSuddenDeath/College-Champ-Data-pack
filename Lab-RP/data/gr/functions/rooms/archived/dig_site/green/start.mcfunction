
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_green,tag=divider]
execute as @a[team=green] at @s run spawnpoint
# Add a team phase
scoreboard players add green gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_greensb "§a§l当前房间: §rDig Site"
# Play sound and title
execute as @a[team=green] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=green] times 20 40 20
title @a[team=green] subtitle ""
title @a[team=green] title "§e合成装备！"
# Give items
clear @a[team=green]
give @a[team=green] diamond_pickaxe{Unbreakable:1b,CanDestroy:[ancient_debris,diamond_ore,coal_ore,deepslate_gold_ore,dirt,coarse_dirt],Enchantments:[{id:"efficiency",lvl:10}]}
give @a[team=green] diamond_shovel{Unbreakable:1b,CanDestroy:[dirt,coarse_dirt],Enchantments:[{id:"efficiency",lvl:10}]}
give @a[team=green] minecraft:netherite_upgrade_smithing_template
give @a[team=green] stick

# 开始计时
scoreboard players set green gr_currenttime 0
function gr:rooms/6/green/time