
# Enter Divider
execute if score yellow gr_teamphase matches 15 run function gr:rooms/8/yellow/entry
# Judge Conditions
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if score yellow gr_teamphase matches 16 run function gr:rooms/8/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 15..16 run schedule function gr:rooms/8/yellow/master 1t