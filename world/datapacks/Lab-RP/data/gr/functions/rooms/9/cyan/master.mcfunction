
# Enter Divider
execute if score cyan gr_teamphase matches 17 run function gr:rooms/9/cyan/entry
# Judge Conditions
execute if score cyan gr_teamphase matches 18 run function gr:rooms/9/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 17..18 run schedule function gr:rooms/9/cyan/master 1t