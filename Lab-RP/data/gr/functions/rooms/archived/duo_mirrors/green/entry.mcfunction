

## 检测是否有合适数量的玩家，若有则开始挑战
scoreboard objectives add gr_div4_green dummy
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s positioned ~33 ~10 ~1 if entity @a[dx=3,dy=3,dz=4,team=green] run scoreboard players add 1 gr_div4_green 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s positioned ~33 ~10 ~9 if entity @a[dx=3,dy=3,dz=4,team=green] run scoreboard players add 1 gr_div4_green 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s positioned ~33 ~10 ~17 if entity @a[dx=3,dy=3,dz=4,team=green] run scoreboard players add 1 gr_div4_green 1
execute as @e[type=minecraft:area_effect_cloud,tag=gr_greenanchor] at @s positioned ~33 ~10 ~25 if entity @a[dx=3,dy=3,dz=4,team=green] run scoreboard players add 1 gr_div4_green 1
execute if score 1 gr_div4_green matches 4 run function gr:rooms/8/green/start
## Reset
scoreboard objectives remove gr_div4_green

