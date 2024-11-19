
# Enter Divider
execute if score yellow gr_teamphase matches 17 run function gr:rooms/9/yellow/entry
# Judge Conditions
execute if score yellow gr_teamphase matches 18 run function gr:rooms/9/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 17..18 run schedule function gr:rooms/9/yellow/master 1t