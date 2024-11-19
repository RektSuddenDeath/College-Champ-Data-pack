# Anchor 14886 91 14968

# 
function gr:rooms/2/green/time
#

scoreboard objectives add gr_greenobj dummy


execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=zombie,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=creeper,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=skeleton,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=ravager,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=pillager,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=vindicator,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1

execute if score 1 gr_greenobj matches 6.. run function gr:rooms/2/green/complete
scoreboard objectives remove gr_greenobj