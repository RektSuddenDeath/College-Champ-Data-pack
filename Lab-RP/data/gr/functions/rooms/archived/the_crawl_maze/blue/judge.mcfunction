
# 
function gr:rooms/5/blue/time
#

scoreboard objectives add gr_blueobj dummy



execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~11 ~7 ~8 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~7 ~7 ~17 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~7 ~17 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~19 ~7 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~24 ~7 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~22 ~7 ~24 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1

execute if score 1 gr_blueobj matches 6 run function gr:rooms/5/blue/complete
scoreboard objectives remove gr_blueobj