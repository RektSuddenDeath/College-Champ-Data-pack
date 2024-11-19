
# 
function gr:rooms/9/purple/time
#

scoreboard objectives add gr_purpleobj dummy
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s positioned ~2 ~9 ~10 run gamemode spectator @a[team=purple,dx=2,dy=8,dz=10,gamemode=adventure]
execute as @a[team=purple,gamemode=spectator] run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 4 run function gr:rooms/9/purple/complete
scoreboard objectives remove gr_purpleobj