
# 
function gr:rooms/4/yellow/time
#

scoreboard objectives add gr_yellowobj dummy




execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~15 102 ~1 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~16 106 ~5 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~15 105 ~9 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~10 107 ~10 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~19 106 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~21 106 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~15 106 ~14 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~9 106 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~13 107 ~17 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~18 105 ~18 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~20 106 ~21 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~17 106 ~24 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~14 106 ~21 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~10 107 ~20 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~15 102 ~29 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1


execute if score 1 gr_yellowobj matches 15 run function gr:rooms/4/yellow/complete
scoreboard objectives remove gr_yellowobj