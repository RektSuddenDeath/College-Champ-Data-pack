
# 此房间为1-1-1-1 Divider # Anchor 14886 91 14968
## 检测是否有合适数量的玩家，若有则开始挑战
scoreboard objectives add gr_div_purple dummy
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s positioned ~33 ~10 ~5 as @a[dx=3,dy=3,dz=4,team=purple,limit=2] run scoreboard players add 1 gr_div_purple 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s positioned ~33 ~10 ~21 as @a[dx=3,dy=3,dz=4,team=purple,limit=2] run scoreboard players add 1 gr_div_purple 1

execute if score 1 gr_div_purple matches 4 run function gr:rooms/6/purple/start
## Reset
scoreboard objectives remove gr_div_purple

