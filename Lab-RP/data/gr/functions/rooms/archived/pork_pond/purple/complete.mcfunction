

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Teleports away(kill) the Warden if applicable

# Reapply Night Vision


# Playsound
execute as @a[team=purple] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_purpleany] gr_room3time = purple gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 purple_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add purple gr_completeroom 1
scoreboard players add 3 gr_indvroom 1
function gr:scoreboard/moveup/purple
scoreboard players operation purple gr_currentpos = 3 gr_indvroom
function gr:scoreboard/calc
team modify purple friendlyFire false
# Announce position
tellraw @a[team=!purple] ["",{"translate":"team.purple"},"§7第",{"score":{"name": "3","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§5Pork Pond","§e]"]
tellraw @a[team=purple] ["","§7你","§7第",{"score":{"name": "3","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§5Pork Pond","§e]"]
# Initiate next room
scoreboard players add purple gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/4/purple/divider
function gr:rooms/4/purple/master