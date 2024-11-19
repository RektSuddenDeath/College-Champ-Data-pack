
# Enter Divider
execute if score yellow gr_teamphase matches 7 run function gr:rooms/4/yellow/entry
# Judge Conditions
execute if score yellow gr_teamphase matches 8 run function gr:rooms/4/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 7..8 run schedule function gr:rooms/4/yellow/master 1t