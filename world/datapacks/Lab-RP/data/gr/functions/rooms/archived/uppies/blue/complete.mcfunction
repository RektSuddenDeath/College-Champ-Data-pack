

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Playsound
execute as @a[team=blue] at @s run playsound gr.roomcomplete record @s

# Clear Inv
clear @a[team=blue]

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] gr_room7time = blue gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 blue_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add blue gr_completeroom 1
scoreboard players add 7 gr_indvroom 1
function gr:scoreboard/moveup/blue
scoreboard players operation blue gr_currentpos = 7 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!blue] ["",{"translate":"team.blue"},"§7第",{"score":{"name": "7","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§bUppies","§e]"]
tellraw @a[team=blue] ["","§7你","§7第",{"score":{"name": "7","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§bUppies","§e]"]
# Initiate next room
scoreboard players add blue gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/8/blue/divider
function gr:rooms/8/blue/master