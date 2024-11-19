

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}

# Playsound
execute as @a[team=cyan] at @s run playsound gr.roomcomplete record @s

# Room Effect

execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run setblock ~14 104 ~15 candle_cake[lit=true]

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] gr_room8time = cyan gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 cyan_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add cyan gr_completeroom 1
scoreboard players add 8 gr_indvroom 1
function gr:scoreboard/moveup/cyan
scoreboard players operation cyan gr_currentpos = 8 gr_indvroom
function gr:scoreboard/calc

# Announce position
tellraw @a[team=!cyan] ["",{"translate":"team.cyan"},"§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§dBirthday Cake!","§e]"]
tellraw @a[team=cyan] ["","§7你","§7第",{"score":{"name": "8","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§dBirthday Cake!","§e]"]
# Initiate next room
scoreboard players add cyan gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run tp @s ~-60 ~ ~
function gr:rooms/9/cyan/divider
function gr:rooms/9/cyan/master