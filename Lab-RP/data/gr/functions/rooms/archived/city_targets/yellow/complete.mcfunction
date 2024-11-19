

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~25 ~10 ~27 ~27 ~10 ~25 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~28 ~10 ~18 ~28 ~10 ~20 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~28 ~10 ~10 ~28 ~10 ~12 air
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~25 ~10 ~2 ~27 ~10 ~4 air

# Playsound
execute as @a[team=yellow] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_yellowany] gr_room1time = yellow gr_currenttime

# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 yellow_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add yellow gr_completeroom 1
scoreboard players add 1 gr_indvroom 1
function gr:scoreboard/moveup/yellow
scoreboard players operation yellow gr_currentpos = 1 gr_indvroom
function gr:scoreboard/calc
# Announce position
tellraw @a[team=!yellow] ["",{"translate":"team.yellow"},"§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§6City Targets","§e]"]
tellraw @a[team=yellow] ["","§7你","§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§6City Targets","§e]"]
# Initiate next room
scoreboard players add yellow gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_yellowanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/2/yellow/divider
function gr:rooms/2/yellow/master