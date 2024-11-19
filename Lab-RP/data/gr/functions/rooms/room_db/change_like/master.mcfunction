
# Enter Divider
execute if score blue gr_teamphase matches 5 run function gr:rooms/3/blue/entry
# Judge Conditions
execute if score blue gr_teamphase matches 6 run function gr:rooms/3/blue/judge
# Loop
execute if score blue gr_teamphase matches 5..6 run schedule function gr:rooms/3/blue/master 1t