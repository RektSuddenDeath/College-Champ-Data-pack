
# 
function gr:rooms/9/red/time
#

scoreboard objectives add gr_redobj dummy
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s positioned ~2 ~9 ~10 run gamemode spectator @a[team=red,dx=2,dy=8,dz=10,gamemode=adventure]
execute as @a[team=red,gamemode=spectator] run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 4 run function gr:rooms/9/red/complete
scoreboard objectives remove gr_redobj