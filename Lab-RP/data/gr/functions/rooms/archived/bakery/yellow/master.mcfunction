
# Enter Divider
execute if score yellow gr_teamphase matches 1 run function gr:rooms/1/yellow/entry
# Judge Conditions
execute if score yellow gr_teamphase matches 2 run function gr:rooms/1/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 1..2 run schedule function gr:rooms/1/yellow/master 1t