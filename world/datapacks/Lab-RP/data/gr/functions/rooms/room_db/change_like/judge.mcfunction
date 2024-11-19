# Anchor 14886 91 14968

# 
function gr:rooms/3/blue/time
#

execute store result storage gr:function_data room_no int 1 run scoreboard players get blue gr_currentroom
data modify storage gr:function_data team set value "blue"
function gr:rooms/room_db/main/room_id with storage gr:function_data
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s run function gr:rooms/room_db/main/judge with storage gr:function_data

#scoreboard objectives add gr_blueobj dummy


# execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~24 ~14 ~24 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
# execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~7 ~7 ~26 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
# execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~3 ~14 ~23 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
# execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~19 ~15 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
# execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~24 ~9 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
# execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~23 ~14 ~6 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
# execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~18 ~7 ~3 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
# execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~3 ~14 ~6 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1

# execute if score 1 gr_blueobj matches 8.. run function gr:rooms/3/blue/complete
#scoreboard objectives remove gr_blueobj