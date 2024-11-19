
# 
function gr:rooms/8/pink/time


scoreboard objectives add gr_pinkobj dummy

execute as @a[team=pink,nbt={SelectedItem:{id:"minecraft:decorated_pot"}}] run item modify entity @s weapon.mainhand gr:pottery_hunt
# Compare Pots
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if blocks ~6 ~8 ~15 ~6 ~8 ~15 ~6 ~11 ~15 all run scoreboard players add 1 gr_pinkobj 1


execute if score 1 gr_pinkobj matches 1 run function gr:rooms/8/pink/complete
scoreboard objectives remove gr_pinkobj