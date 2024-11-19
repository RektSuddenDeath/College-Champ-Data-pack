
# Enter Divider
execute if score green gr_teamphase matches 3 run function gr:rooms/2/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 4 run function gr:rooms/2/green/judge
# Loop
execute if score green gr_teamphase matches 3..4 run schedule function gr:rooms/2/green/master 1t