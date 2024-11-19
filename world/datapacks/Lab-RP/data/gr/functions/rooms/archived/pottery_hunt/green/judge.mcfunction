
# 
function gr:rooms/8/green/time


scoreboard objectives add gr_greenobj dummy

execute as @a[team=green,nbt={SelectedItem:{id:"minecraft:decorated_pot"}}] run item modify entity @s weapon.mainhand gr:pottery_hunt
# Compare Pots
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~6 ~8 ~15 ~6 ~8 ~15 ~6 ~11 ~15 all run scoreboard players add 1 gr_greenobj 1


execute if score 1 gr_greenobj matches 1 run function gr:rooms/8/green/complete
scoreboard objectives remove gr_greenobj