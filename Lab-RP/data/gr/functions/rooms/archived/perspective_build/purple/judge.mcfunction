
# 
function gr:rooms/6/purple/time
#
## Removes blocks that are outside the build area
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~13 ~10 ~19 ~19 ~14 ~19 air
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~13 ~10 ~19 ~13 ~14 ~25 air
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~13 ~10 ~25 ~19 ~14 ~25 air
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~19 ~10 ~19 ~19 ~14 ~25 air
## Adds can place on tag to items on the ground
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s run execute as @e[type=item,dx=31,dy=20,dz=31] run data merge entity @s {Item:{tag:{CanPlaceOn:[black_terracotta,lapis_block,raw_gold_block,emerald_block,redstone_block]}}}

#
scoreboard objectives add gr_purpleobj dummy

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if blocks ~14 ~9 ~6 ~18 ~13 ~10 ~14 ~9 ~20 all run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 1 run function gr:rooms/6/purple/complete
scoreboard objectives remove gr_purpleobj