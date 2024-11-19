
# Enter Divider
execute if score blue gr_teamphase matches 7 run function gr:rooms/4/blue/entry
# Judge Conditions
execute if score blue gr_teamphase matches 8 run function gr:rooms/4/blue/judge
# Loop
execute if score blue gr_teamphase matches 7..8 run schedule function gr:rooms/4/blue/master 1t