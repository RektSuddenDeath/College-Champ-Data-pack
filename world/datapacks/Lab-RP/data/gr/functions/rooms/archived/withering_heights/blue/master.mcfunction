
# Enter Divider
execute if score blue gr_teamphase matches 1 run function gr:rooms/1/blue/entry
# Judge Conditions
execute if score blue gr_teamphase matches 2 run function gr:rooms/1/blue/judge
# Loop
execute if score blue gr_teamphase matches 1..2 run schedule function gr:rooms/1/blue/master 1t