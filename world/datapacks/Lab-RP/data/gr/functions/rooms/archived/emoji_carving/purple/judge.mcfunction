# Anchor 14886 91 14968
# 
function gr:rooms/4/purple/time
#
# Detects if there's a reset
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~24 ~11 ~26 birch_button[powered=true] run fill ~17 ~11 ~21 ~17 ~17 ~25 yellow_concrete
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~24 ~11 ~26 birch_button[powered=true] run fill ~17 ~12 ~20 ~17 ~16 ~26 yellow_concrete
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~24 ~11 ~26 birch_button[powered=true] run setblock ~24 ~11 ~26 birch_button[facing=north]

# Deletes yellow concrete entities
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s run kill @e[type=item,dx=31,dy=20,dz=30,nbt={Item:{id:"minecraft:yellow_concrete"}}]
#
scoreboard objectives add gr_purpleobj dummy

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if blocks ~12 ~11 ~4 ~12 ~17 ~10 ~17 ~11 ~20 all run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 1 run function gr:rooms/4/purple/complete
scoreboard objectives remove gr_purpleobj