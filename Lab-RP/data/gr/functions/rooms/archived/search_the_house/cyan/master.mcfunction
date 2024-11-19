
# Enter Divider
execute if score cyan gr_teamphase matches 9 run function gr:rooms/5/cyan/entry
# Judge Conditions
execute if score cyan gr_teamphase matches 10 run function gr:rooms/5/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 9..10 run schedule function gr:rooms/5/cyan/master 1t