
# Enter Divider
execute if score blue gr_teamphase matches 17 run function gr:rooms/9/blue/entry
# Judge Conditions
execute if score blue gr_teamphase matches 18 run function gr:rooms/9/blue/judge
# Loop
execute if score blue gr_teamphase matches 17..18 run schedule function gr:rooms/9/blue/master 1t