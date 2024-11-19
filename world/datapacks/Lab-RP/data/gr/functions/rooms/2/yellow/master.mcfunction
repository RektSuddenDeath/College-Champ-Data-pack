
# Enter Divider
execute if score yellow gr_teamphase matches 3 run function gr:rooms/2/yellow/entry
# Judge Conditions
execute if score yellow gr_teamphase matches 4 run function gr:rooms/2/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 3..4 run schedule function gr:rooms/2/yellow/master 1t