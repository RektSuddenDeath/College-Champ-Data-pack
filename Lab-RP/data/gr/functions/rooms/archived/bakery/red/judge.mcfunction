# Anchor 14886 91 14968
# ID 1 City Targets
# 
function gr:rooms/1/red/time
#


scoreboard objectives add gr_redobj dummy

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~8 103 ~23 air run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~5 102 ~19 air run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~6 102 ~11 air run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~7 103 ~7 air run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~12 102 ~9 air run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~12 102 ~19 air run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~12 102 ~21 air run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~8 103 ~7 air run scoreboard players add 1 gr_redobj 1




execute if score 1 gr_redobj matches 8 run function gr:rooms/1/red/complete
scoreboard objectives remove gr_redobj