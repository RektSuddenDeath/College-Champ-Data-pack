

# Open Gates (所有房间都适用这个终点门)
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}


execute store result storage gr:function_data room_no int 1 run scoreboard players get blue gr_currentroom
data modify storage gr:function_data team set value "blue"
function gr:rooms/room_db/main/room_id with storage gr:function_data
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s run function gr:rooms/room_db/main/complete with storage gr:function_data


# BELOW IS REPLACED
# # Teleports away(kill) the Warden if applicable
# kill @e[type=warden,tag=blue,tag=grroom]
# # Reapply Night Vision
# effect give @a[team=blue] night_vision 1000000 0 true

# # Playsound
# execute as @a[team=blue] at @s run playsound gr.roomcomplete record @s

# # Save times
# scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_blueany] gr_room3time = blue gr_currenttime
# # Calculate Position, and update scoreboard
# scoreboard players add blue gr_completeroom 1
# scoreboard players add 3 gr_indvroom 1
# function gr:scoreboard/moveup/blue
# scoreboard players operation blue gr_currentpos = 3 gr_indvroom
# function gr:scoreboard/calc
# team modify blue friendlyFire false
# # Announce position
# tellraw @a[team=!blue] ["",{"translate":"team.blue"},"§7第",{"score":{"name": "3","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§7Ancient City","§e]"]
# tellraw @a[team=blue] ["","§7你","§7第",{"score":{"name": "3","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§7Ancient City","§e]"]
# ABOVE IS REPLACED


# Initiate next room
scoreboard players add blue gr_teamphase 1
scoreboard players add blue gr_roomtoenter 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s run tp @s ~-47 ~ ~
function gr:rooms/4/blue/divider
function gr:rooms/4/blue/master