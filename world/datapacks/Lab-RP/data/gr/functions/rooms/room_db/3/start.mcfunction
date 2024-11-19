# 开启和关闭门
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run fill ~38 ~10 ~2 ~38 ~14 ~4 barrier
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run fill ~38 ~10 ~10 ~38 ~14 ~12 barrier
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run fill ~38 ~10 ~18 ~38 ~14 ~20 barrier
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run fill ~38 ~10 ~26 ~38 ~14 ~28 barrier
## Summon general aecs
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~38 ~14 ~3 {Duration:9999999,Tags:["gr_closer"]}
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~38 ~14 ~11 {Duration:9999999,Tags:["gr_closer"]}
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~38 ~14 ~19 {Duration:9999999,Tags:["gr_closer"]}
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~38 ~14 ~27 {Duration:9999999,Tags:["gr_closer"]}

$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~32 ~10 ~3 {Duration:9999999,Tags:["gr_opener"]}
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~32 ~10 ~11 {Duration:9999999,Tags:["gr_opener"]}
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~32 ~10 ~19 {Duration:9999999,Tags:["gr_opener"]}
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~32 ~10 ~27 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms
$kill @e[type=armor_stand,tag=gr_$(team),tag=divider]
# Add a team phase
$scoreboard players add $(team) gr_teamphase 1

# Modify scoreboard

$scoreboard players display name $room_name gr_$(team)sb ["§a§l当前房间: §r §f","Art Gallery"]

# Play sound and title
$execute as @a[team=$(team)] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
$title @a[team=$(team)] times 20 40 20
$title @a[team=$(team)] subtitle ""
$title @a[team=$(team)] title "§e复制图案！"
# Give items
$clear @a[team=$(team)]
$give @a[team=$(team)] iron_pickaxe{CanDestroy:[diamond_block,emerald_block,gold_block,lapis_block,waxed_oxidized_cut_copper],Unbreakable:1b} 1
