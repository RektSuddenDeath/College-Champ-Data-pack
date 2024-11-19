
# Enter Divider
execute if score yellow gr_teamphase matches 9 run function gr:rooms/5/yellow/entry
# Judge Conditions
execute if score yellow gr_teamphase matches 10 run function gr:rooms/5/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 9..10 run schedule function gr:rooms/5/yellow/master 1t