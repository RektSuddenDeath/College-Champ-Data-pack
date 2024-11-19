
# 此房间为1-1-1-1 Divider # Anchor 14886 91 14968
## 检测是否有合适数量的玩家，若有则开始挑战
scoreboard objectives add gr_div_blue dummy

execute store result storage gr:function_data room_no int 1 run scoreboard players get blue gr_roomtoenter
data modify storage gr:function_data team set value "blue"

function gr:rooms/room_db/main/room_id with storage gr:function_data
function gr:rooms/room_db/main/entry with storage gr:function_data


execute if score 1 gr_div_blue matches 4 run function gr:rooms/3/blue/start
## Reset
scoreboard objectives remove gr_div_blue

