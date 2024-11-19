

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~7 101 ~7 ~7 104 ~9 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~7 101 ~23 ~7 104 ~25 air

# Playsound
execute as @a[team=yellow] at @s run playsound gr.roomcomplete record @s

# Clear Inv
clear @a[team=yellow]

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_yellowany] gr_room7time = yellow gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 yellow_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add yellow gr_completeroom 1
scoreboard players add 7 gr_indvroom 1
function gr:scoreboard/moveup/yellow
scoreboard players operation yellow gr_currentpos = 7 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!yellow] ["",{"translate":"team.yellow"},"§7第",{"score":{"name": "7","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§6Honeycomb","§e]"]
tellraw @a[team=yellow] ["","§7你","§7第",{"score":{"name": "7","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§6Honeycomb","§e]"]
# Initiate next room
scoreboard players add yellow gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/8/yellow/divider
function gr:rooms/8/yellow/master