# Anchor 14886 91 14968

# 
function gr:rooms/2/orange/time
#

scoreboard objectives add gr_orangeobj dummy


execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~29 ~16 ~29 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~22 ~11 ~23 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~20 ~11 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~21 ~11 ~14 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~20 ~11 ~13 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~19 ~11 ~14 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~22 ~15 ~23 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~17 ~12 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~22 ~15 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~12 ~14 ~3 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~4 ~15 ~2 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~13 ~11 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~11 ~14 ~8 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1

execute if score 1 gr_orangeobj matches 13.. run function gr:rooms/2/orange/complete
scoreboard objectives remove gr_orangeobj