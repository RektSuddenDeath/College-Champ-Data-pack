

# Open Gates
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}


# Playsound
execute as @a[team=cyan] at @s run playsound gr.roomcomplete record @s

# Save times
scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_cyanany] gr_room1time = cyan gr_currenttime
# Trim
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run fill ~1 111 ~-1 ~31 111 ~31 cyan_terracotta replace smooth_quartz
# Calculate Position, and update scoreboard
scoreboard players add cyan gr_completeroom 1
scoreboard players add 1 gr_indvroom 1
function gr:scoreboard/moveup/cyan
scoreboard players operation cyan gr_currentpos = 1 gr_indvroom
function gr:scoreboard/calc
# Announce position
tellraw @a[team=!cyan] ["",{"translate":"team.cyan"},"§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§7Withering Heights","§e]"]
tellraw @a[team=cyan] ["","§7你","§7第",{"score":{"name": "1","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§7Withering Heights","§e]"]
# Initiate next room
scoreboard players add cyan gr_teamphase 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_cyananchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/2/cyan/divider
function gr:rooms/2/cyan/master