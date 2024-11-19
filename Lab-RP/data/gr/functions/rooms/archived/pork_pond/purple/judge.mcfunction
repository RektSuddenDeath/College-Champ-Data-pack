# Anchor 14886 91 14968

# 
function gr:rooms/3/purple/time
#

scoreboard objectives add gr_purpleobj dummy

effect give @a[team=purple] weakness 2 1 true

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s positioned ~ ~-10 ~ unless entity @e[type=pig,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_purpleobj 1


execute if score 1 gr_purpleobj matches 1 run function gr:rooms/3/purple/complete
scoreboard objectives remove gr_purpleobj