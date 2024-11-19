# Anchor 14886 91 14968
# ID 1 City Targets
# 
function gr:rooms/1/green/time
#


scoreboard objectives add gr_greenobj dummy

scoreboard players operation timedif gr_greenobj = green gr_currenttime
scoreboard players operation timedif gr_greenobj %= 2 math
execute if score timedif gr_greenobj matches 1 as @a[team=green,nbt=!{SelectedItem:{tag:{modified:1b}}}] run item modify entity @s weapon.mainhand gr:art_gallery

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s run fill ~9 100 ~5 ~11 102 ~5 air destroy
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s run fill ~9 100 ~9 ~11 102 ~9 air destroy
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s run fill ~23 100 ~21 ~25 102 ~21 air destroy
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s run fill ~23 100 ~25 ~25 102 ~25 air destroy

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~9 100 ~6 ~11 102 ~6 ~23 100 ~6 all run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~9 100 ~8 ~11 102 ~8 ~23 100 ~8 all run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~9 100 ~22 ~11 102 ~22 ~23 100 ~22 all run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~9 100 ~24 ~11 102 ~24 ~23 100 ~24 all run scoreboard players add 1 gr_greenobj 1


execute if score 1 gr_greenobj matches 4 run function gr:rooms/1/green/complete
scoreboard objectives remove gr_greenobj