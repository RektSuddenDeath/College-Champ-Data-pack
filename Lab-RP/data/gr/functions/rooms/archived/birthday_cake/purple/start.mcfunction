
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
scoreboard players display name var_room_name gr_purplesb "§a§l当前房间: §r§dBirthday Cake!"
# Play sound and title
execute as @a[team=purple] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=purple] times 20 40 20
title @a[team=purple] subtitle ""
title @a[team=purple] title "§e制作生日蛋糕！"
# Give items
clear @a[team=purple]
give @a[team=purple] shears{Unbreakable:1b,CanPlaceOn:[beehive],CanDestroy:[wheat,sugar_cane]}
give @a[team=purple] netherite_hoe{Unbreakable:1b,CanDestroy:[wheat,sugar_cane]}

recipe give @a[team=purple] cake
recipe give @a[team=purple] candle
recipe give @a[team=purple] sugar_from_sugar_cane

execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon cow ~16 101 ~5 {Tags:["grroom","purple"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon cow ~6 101 ~17 {Tags:["grroom","purple"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon cow ~21 101 ~24 {Tags:["grroom","purple"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon chicken ~14 101 ~29 {Tags:["grroom","purple"],Invulnerable:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon turtle ~14 105 ~15 {Tags:["grroom","purple"],Invulnerable:1b,Passengers:[{id:"chicken"}]}

# 开始计时
scoreboard players set purple gr_currenttime 0
function gr:rooms/8/purple/time