
# 
function gr:rooms/5/purple/time
#

scoreboard objectives add gr_purpleobj dummy



execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~11 ~7 ~8 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~7 ~7 ~17 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~17 ~7 ~17 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~19 ~7 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~24 ~7 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~22 ~7 ~24 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 6 run function gr:rooms/5/purple/complete
scoreboard objectives remove gr_purpleobj