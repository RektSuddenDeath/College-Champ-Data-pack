
# Enter Divider
execute if score blue gr_teamphase matches 15 run function gr:rooms/8/blue/entry
# Judge Conditions
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if score blue gr_teamphase matches 16 run function gr:rooms/8/blue/judge
# Loop
execute if score blue gr_teamphase matches 15..16 run schedule function gr:rooms/8/blue/master 1t