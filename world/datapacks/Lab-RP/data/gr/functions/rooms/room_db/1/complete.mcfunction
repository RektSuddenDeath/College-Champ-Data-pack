

# Teleports away(kill) the Warden if applicable
$kill @e[type=warden,tag=$(team),tag=grroom]

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
$team modify $(team) friendlyFire falsecomplete
# Announce position
$tellraw @a[team=!$(team)] ["",{"translate":"team.$(team)"},"§7第",{"score":{"name": "$(room_no)","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§7Ancient City","§e]"]
$tellraw @a[team=$(team)] ["","§7你","§7第",{"score":{"name": "$(room_no)","objective": "gr_indvroom"},"color": "aqua"},"§7个完成了房间","§e[","§7Ancient City","§e]"]