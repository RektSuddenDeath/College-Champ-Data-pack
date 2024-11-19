
# Enter Divider
execute if score pink gr_teamphase matches 15 run function gr:rooms/8/pink/entry
# Judge Conditions
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if score pink gr_teamphase matches 16 run function gr:rooms/8/pink/judge
# Loop
execute if score pink gr_teamphase matches 15..16 run schedule function gr:rooms/8/pink/master 1t