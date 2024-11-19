
# 
function gr:rooms/9/pink/time
#

scoreboard objectives add gr_pinkobj dummy
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s positioned ~2 ~9 ~10 run gamemode spectator @a[team=pink,dx=2,dy=8,dz=10,gamemode=adventure]
execute as @a[team=pink,gamemode=spectator] run scoreboard players add 1 gr_pinkobj 1

execute if score 1 gr_pinkobj matches 4 run function gr:rooms/9/pink/complete
scoreboard objectives remove gr_pinkobj