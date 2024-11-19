
# 
function gr:rooms/8/blue/time


scoreboard objectives add gr_blueobj dummy

execute as @a[team=blue,nbt={SelectedItem:{id:"minecraft:decorated_pot"}}] run item modify entity @s weapon.mainhand gr:pottery_hunt
# Compare Pots
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if blocks ~6 ~8 ~15 ~6 ~8 ~15 ~6 ~11 ~15 all run scoreboard players add 1 gr_blueobj 1


execute if score 1 gr_blueobj matches 1 run function gr:rooms/8/blue/complete
scoreboard objectives remove gr_blueobj