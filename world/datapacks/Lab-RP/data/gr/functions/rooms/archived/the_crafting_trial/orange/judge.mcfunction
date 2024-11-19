
# 
function gr:rooms/7/orange/time
#
# Drop loot
give @a[team=orange,scores={gr_tmp_mobkill_creeper=1..}] gunpowder 1
give @a[team=orange,scores={gr_tmp_mobkill_spider=1..}] spider_eye 1
give @a[team=orange,scores={gr_tmp_mobkill_spider=1..}] string 1
give @a[team=orange,scores={gr_tmp_mobkill_skeleton=1..}] bone 1
scoreboard players set @a[team=orange] gr_tmp_mobkill_creeper 0
scoreboard players set @a[team=orange] gr_tmp_mobkill_skeleton 0
scoreboard players set @a[team=orange] gr_tmp_mobkill_spider 0

scoreboard objectives add gr_orangeobj dummy

execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~17 101 ~16 hopper{Items:[{Slot:0b,id:"minecraft:loom"}]} run setblock ~16 102 ~16 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~17 101 ~14 hopper{Items:[{Slot:0b,id:"minecraft:firework_star"}]} run setblock ~16 102 ~14 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~16 102 ~16 lime_concrete run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~16 102 ~14 lime_concrete run scoreboard players add 1 gr_orangeobj 1
execute if score 1 gr_orangeobj matches 2 run function gr:rooms/7/orange/complete
scoreboard objectives remove gr_orangeobj