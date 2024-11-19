
# Enter Divider
execute if score cyan gr_teamphase matches 15 run function gr:rooms/8/cyan/entry
# Judge Conditions
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if score cyan gr_teamphase matches 16 run function gr:rooms/8/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 15..16 run schedule function gr:rooms/8/cyan/master 1t