

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}

# Playsound
execute as @a[team=blue] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] gr_room1time = blue gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 blue_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add blue gr_completeroom 1
scoreboard players add 1 gr_indvroom 1
function gr:scoreboard/moveup/blue
scoreboard players operation blue gr_currentpos = 1 gr_indvroom
function gr:scoreboard/calc

# Restore Effects
effect clear @a[team=blue] hunger
effect give @a[team=blue] saturation infinite 7 true

# Announce position
tellraw @a[team=!blue] ["",{"translate":"team.blue"},"§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§dBakery","§e]"]
tellraw @a[team=blue] ["","§7你","§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§dBakery","§e]"]
# Initiate next room
scoreboard players add blue gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/2/blue/divider
function gr:rooms/2/blue/master