

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}

execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~5 101 ~2 ~5 104 ~4 air destroy
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~5 101 ~26 ~5 104 ~28 air destroy
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~5 101 ~14 ~7 101 ~16 air destroy
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~5 100 ~7 ~27 96 ~24 water

# Playsound
execute as @a[team=pink] at @s run playsound gr.roomcomplete record @s

# Clear Inv
clear @a[team=pink]
effect clear @a[team=pink] absorption
effect give @a[team=pink] resistance infinite 5 true
execute as @a[team=pink] run attribute @s generic.max_health base set 20

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_pinkany] gr_room8time = pink gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 pink_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add pink gr_completeroom 1
scoreboard players add 8 gr_indvroom 1
function gr:scoreboard/moveup/pink
scoreboard players operation pink gr_currentpos = 8 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!pink] ["",{"translate":"team.pink"},"§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§9Sunken Chambers","§e]"]
tellraw @a[team=pink] ["","§7你","§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§9Sunken Chambers","§e]"]
# Initiate next room
scoreboard players add pink gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_pinkanchor] at @s run tp @s ~-60 ~ ~
function gr:rooms/9/pink/divider
function gr:rooms/9/pink/master