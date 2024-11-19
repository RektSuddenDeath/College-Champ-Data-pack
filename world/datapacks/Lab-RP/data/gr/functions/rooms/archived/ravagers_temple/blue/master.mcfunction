
# Enter Divider
execute if score blue gr_teamphase matches 3 run function gr:rooms/2/blue/entry
# Judge Conditions
execute if score blue gr_teamphase matches 4 run function gr:rooms/2/blue/judge
# Loop
execute if score blue gr_teamphase matches 3..4 run schedule function gr:rooms/2/blue/master 1t