# Anchor 14886 91 14968
# 
function gr:rooms/7/green/time
#

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s run fill ~16 102 ~3 ~24 102 ~11 air destroy
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s run fill ~16 102 ~19 ~24 102 ~27 air destroy

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s run execute as @e[type=item,dx=32,dy=32,dz=32] run data merge entity @s {Item:{tag:{CanPlaceOn:[white_concrete,"#minecraft:concrete_powder",green_wool,magenta_wool,purple_wool,cyan_wool]}}}


scoreboard objectives add gr_greenobj dummy

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~16 101 ~3 ~24 101 ~11 ~16 94 ~3 all run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~16 101 ~19 ~24 101 ~27 ~16 94 ~19 all run scoreboard players add 1 gr_greenobj 1

execute if score 1 gr_greenobj matches 2 run function gr:rooms/7/green/complete
scoreboard objectives remove gr_greenobj