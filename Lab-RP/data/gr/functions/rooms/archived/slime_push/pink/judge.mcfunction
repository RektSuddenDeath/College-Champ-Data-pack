
# 
function gr:rooms/8/pink/time
#

scoreboard objectives add gr_pinkobj dummy

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~13 ~16 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~19 ~16 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~13 ~16 ~19 redstone_lamp[lit=true] run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~16 ~19 redstone_lamp[lit=true] run scoreboard players add 1 gr_pinkobj 1

execute if score 1 gr_pinkobj matches 4 run function gr:rooms/8/pink/complete
scoreboard objectives remove gr_pinkobj