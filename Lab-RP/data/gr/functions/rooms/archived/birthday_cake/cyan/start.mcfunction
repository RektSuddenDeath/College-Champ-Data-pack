
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
scoreboard players display name var_room_name gr_cyansb "§a§l当前房间: §r§dBirthday Cake!"
# Play sound and title
execute as @a[team=cyan] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=cyan] times 20 40 20
title @a[team=cyan] subtitle ""
title @a[team=cyan] title "§e制作生日蛋糕！"
# Give items
clear @a[team=cyan]
give @a[team=cyan] shears{Unbreakable:1b,CanPlaceOn:[beehive],CanDestroy:[wheat,sugar_cane]}
give @a[team=cyan] netherite_hoe{Unbreakable:1b,CanDestroy:[wheat,sugar_cane]}

recipe give @a[team=cyan] cake
recipe give @a[team=cyan] candle
recipe give @a[team=cyan] sugar_from_sugar_cane

execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon cow ~16 101 ~5 {Tags:["grroom","cyan"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon cow ~6 101 ~17 {Tags:["grroom","cyan"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon cow ~21 101 ~24 {Tags:["grroom","cyan"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon chicken ~14 101 ~29 {Tags:["grroom","cyan"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon turtle ~14 105 ~15 {Tags:["grroom","cyan"],Invulnerable:1b,Passengers:[{id:"chicken"}]}

# 开始计时
scoreboard players set cyan gr_currenttime 0
function gr:rooms/8/cyan/time