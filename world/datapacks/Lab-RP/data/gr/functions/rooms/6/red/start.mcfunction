
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_red,tag=divider]
execute as @a[team=red] at @s run spawnpoint
# Add a team phase
scoreboard players add red gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_redsb "§a§l当前房间: §rDig Site"
# Play sound and title
execute as @a[team=red] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=red] times 20 40 20
title @a[team=red] subtitle ""
title @a[team=red] title "§e合成装备！"
# Give items
clear @a[team=red]
give @a[team=red] diamond_pickaxe{Unbreakable:1b,CanDestroy:[ancient_debris,diamond_ore,coal_ore,deepslate_gold_ore,dirt,coarse_dirt],Enchantments:[{id:"efficiency",lvl:10}]}
give @a[team=red] diamond_shovel{Unbreakable:1b,CanDestroy:[dirt,coarse_dirt],Enchantments:[{id:"efficiency",lvl:10}]}

give @a[team=red] minecraft:netherite_upgrade_smithing_template
give @a[team=red] stick

# 开始计时
scoreboard players set red gr_currenttime 0
function gr:rooms/6/red/time