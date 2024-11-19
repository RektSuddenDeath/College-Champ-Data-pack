
# 
function gr:rooms/9/cyan/time
#

scoreboard objectives add gr_cyanobj dummy
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s positioned ~2 ~9 ~10 run gamemode spectator @a[team=cyan,dx=2,dy=8,dz=10,gamemode=adventure]
execute as @a[team=cyan,gamemode=spectator] run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 4 run function gr:rooms/9/cyan/complete
scoreboard objectives remove gr_cyanobj