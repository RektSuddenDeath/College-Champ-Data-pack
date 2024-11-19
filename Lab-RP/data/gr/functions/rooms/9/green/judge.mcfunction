
# 
function gr:rooms/9/green/time
#

scoreboard objectives add gr_greenobj dummy
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s positioned ~2 ~9 ~10 run gamemode spectator @a[team=green,dx=2,dy=8,dz=10,gamemode=adventure]
execute as @a[team=green,gamemode=spectator] run scoreboard players add 1 gr_greenobj 1

execute if score 1 gr_greenobj matches 4 run function gr:rooms/9/green/complete
scoreboard objectives remove gr_greenobj