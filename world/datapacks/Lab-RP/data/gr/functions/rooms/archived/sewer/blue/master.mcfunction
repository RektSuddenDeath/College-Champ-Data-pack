
# Enter Divider
execute if score blue gr_teamphase matches 9 run function gr:rooms/5/blue/entry
# Judge Conditions
execute if score blue gr_teamphase matches 10 run function gr:rooms/5/blue/judge
# Loop
execute if score blue gr_teamphase matches 9..10 run schedule function gr:rooms/5/blue/master 1t