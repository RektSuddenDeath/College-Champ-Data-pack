
# Enter Divider
execute if score cyan gr_teamphase matches 11 run function gr:rooms/6/cyan/entry
# Judge Conditions
execute if score cyan gr_teamphase matches 12 run function gr:rooms/6/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 11..12 run schedule function gr:rooms/6/cyan/master 1t