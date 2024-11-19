
# Enter Divider
execute if score yellow gr_teamphase matches 5 run function gr:rooms/3/yellow/entry
# Judge Conditions
execute if score yellow gr_teamphase matches 6 run function gr:rooms/3/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 5..6 run schedule function gr:rooms/3/yellow/master 1t