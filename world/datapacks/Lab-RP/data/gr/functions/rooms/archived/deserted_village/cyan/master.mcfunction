
# Enter Divider
execute if score cyan gr_teamphase matches 5 run function gr:rooms/3/cyan/entry
# Judge Conditions
execute if score cyan gr_teamphase matches 6 run function gr:rooms/3/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 5..6 run schedule function gr:rooms/3/cyan/master 1t