
# 
function gr:rooms/5/purple/time
#

scoreboard objectives add gr_purpleobj dummy


execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~8 ~12 ~12 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~8 ~12 ~14 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~8 ~12 ~16 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~8 ~12 ~18 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 4 run function gr:rooms/5/purple/complete
scoreboard objectives remove gr_purpleobj