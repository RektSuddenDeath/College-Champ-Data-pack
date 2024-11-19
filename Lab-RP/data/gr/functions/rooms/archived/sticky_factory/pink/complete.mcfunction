

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~8 ~10 ~6 ~8 ~12 ~8 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~8 ~10 ~22 ~8 ~12 ~24 air
# Playsound
execute as @a[team=pink] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_pinkany] gr_room4time = pink gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 pink_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add pink gr_completeroom 1
scoreboard players add 4 gr_indvroom 1
function gr:scoreboard/moveup/pink
scoreboard players operation pink gr_currentpos = 4 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!pink] ["",{"translate":"team.pink"},"§7第",{"score":{"name": "4","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§aSticky Factory","§e]"]
tellraw @a[team=pink] ["","§7你","§7第",{"score":{"name": "4","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§aSticky Factory","§e]"]
# Initiate next room
scoreboard players add pink gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/5/pink/divider
function gr:rooms/5/pink/master