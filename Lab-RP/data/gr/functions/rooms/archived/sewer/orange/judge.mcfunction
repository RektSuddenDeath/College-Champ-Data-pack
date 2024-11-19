
# 
function gr:rooms/5/orange/time
#

scoreboard objectives add gr_orangeobj dummy


execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~8 ~12 ~12 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~8 ~12 ~14 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~8 ~12 ~16 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~8 ~12 ~18 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1

execute if score 1 gr_orangeobj matches 4 run function gr:rooms/5/orange/complete
scoreboard objectives remove gr_orangeobj