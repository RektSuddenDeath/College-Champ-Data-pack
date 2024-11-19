
# Enter Divider
execute if score cyan gr_teamphase matches 1 run function gr:rooms/1/cyan/entry
# Judge Conditions
execute if score cyan gr_teamphase matches 2 run function gr:rooms/1/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 1..2 run schedule function gr:rooms/1/cyan/master 1t