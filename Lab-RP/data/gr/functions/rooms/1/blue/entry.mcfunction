
# 此房间为1-1-1-1 Divider # Anchor 14886 91 14968
## 检测是否有合适数量的玩家，若有则开始挑战
scoreboard objectives add gr_div4_blue dummy
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s positioned ~33 ~10 ~1 if entity @a[dx=3,dy=3,dz=4,team=blue] run scoreboard players add 1 gr_div4_blue 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s positioned ~33 ~10 ~9 if entity @a[dx=3,dy=3,dz=4,team=blue] run scoreboard players add 1 gr_div4_blue 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s positioned ~33 ~10 ~17 if entity @a[dx=3,dy=3,dz=4,team=blue] run scoreboard players add 1 gr_div4_blue 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_blueanchor] at @s positioned ~33 ~10 ~25 if entity @a[dx=3,dy=3,dz=4,team=blue] run scoreboard players add 1 gr_div4_blue 1
execute if score 1 gr_div4_blue matches 4 run function gr:rooms/1/blue/start
## Reset
scoreboard objectives remove gr_div4_blue

