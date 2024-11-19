
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_pink,tag=divider]
execute as @a[team=pink] at @s run spawnpoint
# Add a team phase
scoreboard players add pink gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_pinksb "§a§l当前房间: §r§dBirthday Cake!"
# Play sound and title
execute as @a[team=pink] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=pink] times 20 40 20
title @a[team=pink] subtitle ""
title @a[team=pink] title "§e制作生日蛋糕！"
# Give items
clear @a[team=pink]
give @a[team=pink] shears{Unbreakable:1b,CanPlaceOn:[beehive],CanDestroy:[wheat,sugar_cane]}
give @a[team=pink] netherite_hoe{Unbreakable:1b,CanDestroy:[wheat,sugar_cane]}

recipe give @a[team=pink] cake
recipe give @a[team=pink] candle
recipe give @a[team=pink] sugar_from_sugar_cane

execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon cow ~16 101 ~5 {Tags:["grroom","pink"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon cow ~6 101 ~17 {Tags:["grroom","pink"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon cow ~21 101 ~24 {Tags:["grroom","pink"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon chicken ~14 101 ~29 {Tags:["grroom","pink"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon turtle ~14 105 ~15 {Tags:["grroom","pink"],Invulnerable:1b,Passengers:[{id:"chicken"}]}

# 开始计时
scoreboard players set pink gr_currenttime 0
function gr:rooms/8/pink/time