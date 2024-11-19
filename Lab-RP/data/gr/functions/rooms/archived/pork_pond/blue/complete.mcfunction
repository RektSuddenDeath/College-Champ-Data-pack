

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Teleports away(kill) the Warden if applicable

# Reapply Night Vision


# Playsound
execute as @a[team=blue] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] gr_room3time = blue gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 blue_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add blue gr_completeroom 1
scoreboard players add 3 gr_indvroom 1
function gr:scoreboard/moveup/blue
scoreboard players operation blue gr_currentpos = 3 gr_indvroom
function gr:scoreboard/calc
team modify blue friendlyFire false
# Announce position
tellraw @a[team=!blue] ["",{"translate":"team.blue"},"§7第",{"score":{"name": "3","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§5Pork Pond","§e]"]
tellraw @a[team=blue] ["","§7你","§7第",{"score":{"name": "3","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§5Pork Pond","§e]"]
# Initiate next room
scoreboard players add blue gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/4/blue/divider
function gr:rooms/4/blue/master