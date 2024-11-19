
# 
function gr:rooms/8/orange/time


scoreboard objectives add gr_orangeobj dummy

execute as @a[team=orange,nbt={SelectedItem:{id:"minecraft:decorated_pot"}}] run item modify entity @s weapon.mainhand gr:pottery_hunt
# Compare Pots
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if blocks ~6 ~8 ~15 ~6 ~8 ~15 ~6 ~11 ~15 all run scoreboard players add 1 gr_orangeobj 1


execute if score 1 gr_orangeobj matches 1 run function gr:rooms/8/orange/complete
scoreboard objectives remove gr_orangeobj