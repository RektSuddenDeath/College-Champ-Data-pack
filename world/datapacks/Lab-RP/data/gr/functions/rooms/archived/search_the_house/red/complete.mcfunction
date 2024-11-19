

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}

# Playsound
execute as @a[team=red] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_redany] gr_room5time = red gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 red_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add red gr_completeroom 1
scoreboard players add 5 gr_indvroom 1
function gr:scoreboard/moveup/red
scoreboard players operation red gr_currentpos = 5 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!red] ["",{"translate":"team.red"},"§7第",{"score":{"name": "5","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§dSearch The House","§e]"]
tellraw @a[team=red] ["","§7你","§7第",{"score":{"name": "5","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§dSearch The House","§e]"]
# Initiate next room
scoreboard players add red gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_redanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/6/red/divider
function gr:rooms/6/red/master