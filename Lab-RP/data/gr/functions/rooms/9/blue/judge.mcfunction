
# 
function gr:rooms/9/blue/time
#

scoreboard objectives add gr_blueobj dummy
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s positioned ~2 ~9 ~10 run gamemode spectator @a[team=blue,dx=2,dy=8,dz=10,gamemode=adventure]
execute as @a[team=blue,gamemode=spectator] run scoreboard players add 1 gr_blueobj 1

execute if score 1 gr_blueobj matches 4 run function gr:rooms/9/blue/complete
scoreboard objectives remove gr_blueobj