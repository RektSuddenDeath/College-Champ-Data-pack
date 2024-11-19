
# Enter Divider
execute if score cyan gr_teamphase matches 7 run function gr:rooms/4/cyan/entry
# Judge Conditions
execute if score cyan gr_teamphase matches 8 run function gr:rooms/4/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 7..8 run schedule function gr:rooms/4/cyan/master 1t