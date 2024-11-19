
# 
function gr:rooms/9/orange/time
#

scoreboard objectives add gr_orangeobj dummy
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s positioned ~2 ~9 ~10 run gamemode spectator @a[team=orange,dx=2,dy=8,dz=10,gamemode=adventure]
execute as @a[team=orange,gamemode=spectator] run scoreboard players add 1 gr_orangeobj 1

execute if score 1 gr_orangeobj matches 4 run function gr:rooms/9/orange/complete
scoreboard objectives remove gr_orangeobj