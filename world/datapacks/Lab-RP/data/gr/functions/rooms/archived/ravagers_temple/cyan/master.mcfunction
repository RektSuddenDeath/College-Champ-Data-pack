
# Enter Divider
execute if score cyan gr_teamphase matches 3 run function gr:rooms/2/cyan/entry
# Judge Conditions
execute if score cyan gr_teamphase matches 4 run function gr:rooms/2/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 3..4 run schedule function gr:rooms/2/cyan/master 1t