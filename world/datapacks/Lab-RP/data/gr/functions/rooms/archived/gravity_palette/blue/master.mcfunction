
# Enter Divider
execute if score blue gr_teamphase matches 11 run function gr:rooms/6/blue/entry
# Judge Conditions
execute if score blue gr_teamphase matches 12 run function gr:rooms/6/blue/judge
# Loop
execute if score blue gr_teamphase matches 11..12 run schedule function gr:rooms/6/blue/master 1t