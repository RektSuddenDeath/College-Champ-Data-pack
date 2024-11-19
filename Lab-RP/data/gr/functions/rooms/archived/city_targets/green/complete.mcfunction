

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run fill ~25 ~10 ~27 ~27 ~10 ~25 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run fill ~28 ~10 ~18 ~28 ~10 ~20 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run fill ~28 ~10 ~10 ~28 ~10 ~12 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run fill ~25 ~10 ~2 ~27 ~10 ~4 air

# Playsound
execute as @a[team=green] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_greenany] gr_room1time = green gr_currenttime

# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 green_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add green gr_completeroom 1
scoreboard players add 1 gr_indvroom 1
function gr:scoreboard/moveup/green
scoreboard players operation green gr_currentpos = 1 gr_indvroom
function gr:scoreboard/calc
# Announce position
tellraw @a[team=!green] ["",{"translate":"team.green"},"§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§6City Targets","§e]"]
tellraw @a[team=green] ["","§7你","§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§6City Targets","§e]"]
# Initiate next room
scoreboard players add green gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/2/green/divider
function gr:rooms/2/green/master