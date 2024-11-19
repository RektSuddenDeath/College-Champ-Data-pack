

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~7 ~10 ~2 ~7 ~13 ~4 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~7 ~10 ~10 ~7 ~13 ~12 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~7 ~10 ~18 ~7 ~13 ~20 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~7 ~10 ~26 ~7 ~13 ~28 air

# Playsound
execute as @a[team=purple] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_purpleany] gr_room1time = purple gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 purple_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add purple gr_completeroom 1
scoreboard players add 1 gr_indvroom 1
function gr:scoreboard/moveup/purple
scoreboard players operation purple gr_currentpos = 1 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!purple] ["",{"translate":"team.purple"},"§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§2Jungle Pass","§e]"]
tellraw @a[team=purple] ["","§7你","§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§2Jungle Pass","§e]"]
# Initiate next room
scoreboard players add purple gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/2/purple/divider
function gr:rooms/2/purple/master