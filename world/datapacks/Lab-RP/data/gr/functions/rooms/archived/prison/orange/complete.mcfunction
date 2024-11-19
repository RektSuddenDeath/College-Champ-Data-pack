

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run fill ~8 ~10 ~22 ~8 ~13 ~24 air
# Playsound
execute as @a[team=orange] at @s run playsound gr.roomcomplete record @s

# Clear Inv
clear @a[team=orange]

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_orangeany] gr_room4time = orange gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 orange_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add orange gr_completeroom 1
scoreboard players add 4 gr_indvroom 1
function gr:scoreboard/moveup/orange
scoreboard players operation orange gr_currentpos = 4 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!orange] ["",{"translate":"team.orange"},"§7第",{"score":{"name": "4","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§fPrison","§e]"]
tellraw @a[team=orange] ["","§7你","§7第",{"score":{"name": "4","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§fPrison","§e]"]
# Initiate next room
scoreboard players add orange gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_orangeanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/5/orange/divider
function gr:rooms/5/orange/master