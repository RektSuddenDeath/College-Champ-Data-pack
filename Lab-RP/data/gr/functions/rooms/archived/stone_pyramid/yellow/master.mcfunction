
# Enter Divider
execute if score yellow gr_teamphase matches 11 run function gr:rooms/6/yellow/entry
# Judge Conditions
execute if score yellow gr_teamphase matches 12 run function gr:rooms/6/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 11..12 run schedule function gr:rooms/6/yellow/master 1t