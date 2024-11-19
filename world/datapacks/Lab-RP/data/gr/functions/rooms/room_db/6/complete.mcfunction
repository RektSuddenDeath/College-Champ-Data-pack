

# Open Gates
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run summon area_effect_cloud ~ ~10 ~15 {Duration:9999999,Tags:["gr_opener"]}
# Teleports away(kill) the Warden if applicable

# Playsound
$execute as @a[team=$(team)] at @s run playsound gr.roomcomplete record @s

# Save times
$scoreboard players operation @e[type=area_effect_cloud,tag=gr_general,tag=gr_$(team)any] gr_room$(room_no)time = $(team) gr_currenttime
# Calculate Position, and update scoreboard
scoreboard players add $(team) gr_completeroom 1
scoreboard players add $(room_no) gr_indvroom 1
$function gr:scoreboard/moveup/$(team)
scoreboard players operation $(team) gr_currentpos = $(room_no) gr_indvroom
function gr:scoreboard/calc
$team modify $(team) friendlyFire false
# Announce position
$tellraw @a[team=!$(team)] ["",{"translate":"team.$(team)"},"§7第",{"score":{"name": "$(room_no)","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§5Deserted Village","§e]"]
$tellraw @a[team=$(team)] ["","§7你","§7第",{"score":{"name": "$(room_no)","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§5Deserted Village","§e]"]
# Initiate next room
$scoreboard players add $(team) gr_teamphase 1
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s run tp @s ~-47 ~ ~
$function gr:rooms/$(next_room_no)/$(team)/divider
$function gr:rooms/$(next_room_no)/$(team)/master