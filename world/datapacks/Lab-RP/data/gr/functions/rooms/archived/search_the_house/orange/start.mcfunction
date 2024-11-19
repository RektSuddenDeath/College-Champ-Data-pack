
# 开启和关闭门
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run fill ~38 ~10 ~14 ~38 ~14 ~16 barrier
## Summon general aecs
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run summon area_effect_cloud ~38 ~14 ~15 {Duration:9999999,Tags:["gr_closer"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run summon area_effect_cloud ~32 ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Clear divider holograms

kill @e[type=armor_stand,tag=gr_orange,tag=divider]
execute as @a[team=orange] at @s run spawnpoint
# Add a team phase
scoreboard players add orange gr_teamphase 1

# Modify scoreboard
scoreboard players display name var_room_name gr_orangesb "§a§l当前房间: §rSearch The House"
# Play sound and title
execute as @a[team=orange] at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1.5
title @a[team=orange] times 20 40 20
title @a[team=orange] subtitle ""
title @a[team=orange] title "§e找到所需物品！"
# Give items
clear @a[team=orange]
give @a[team=orange] iron_pickaxe{Unbreakable:1b,Enchantments:[{id:"silk_touch",lvl:1}],CanDestroy:[brown_mushroom_block,bone_block,blue_ice,purple_bed,stonecutter,red_mushroom_block,iron_ore,deepslate_gold_ore,scaffolding,grindstone,slime_block,emerald_block,sponge,wet_sponge,loom,cartography_table,note_block,iron_block,hay_block,melon,pumpkin,smoker,furnace,barrel,composter,amethyst_block,smithing_table,deepslate_emerald_ore,jack_o_lantern,prismarine_bricks,cyan_bed,dried_kelp_block,bookshelf,pink_bed,lapis_block,raw_gold_block,bricks,red_bed,honey_block,sticky_piston,target,blue_bed,campfire,soul_campfire,bell,jukebox,potted_dandelion,potted_cornflower,potted_poppy,potted_white_tulip,potted_pink_tulip,potted_orange_tulip]}
give @a[team=orange] iron_axe{Unbreakable:1b,Enchantments:[{id:"silk_touch",lvl:1}],CanDestroy:[brown_mushroom_block,purple_bed,red_mushroom_block,scaffolding,slime_block,sponge,wet_sponge,loom,cartography_table,note_block,hay_block,melon,pumpkin,barrel,composter,amethyst_block,smithing_table,jack_o_lantern,cyan_bed,dried_kelp_block,bookshelf,pink_bed,lapis_block,raw_gold_block,bricks,red_bed,honey_block,sticky_piston,target,blue_bed,campfire,soul_campfire,jukebox,potted_dandelion,potted_cornflower,potted_poppy,potted_white_tulip,potted_pink_tulip,potted_orange_tulip]}
# 开始计时
scoreboard players set orange gr_currenttime 0
function gr:rooms/5/orange/time