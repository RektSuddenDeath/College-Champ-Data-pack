
# 
function gr:rooms/9/yellow/time
#

scoreboard objectives add gr_yellowobj dummy
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s positioned ~2 ~9 ~10 run gamemode spectator @a[team=yellow,dx=2,dy=8,dz=10,gamemode=adventure]
execute as @a[team=yellow,gamemode=spectator] run scoreboard players add 1 gr_yellowobj 1

execute if score 1 gr_yellowobj matches 4 run function gr:rooms/9/yellow/complete
scoreboard objectives remove gr_yellowobj