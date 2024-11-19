
# Enter Divider
execute if score orange gr_teamphase matches 3 run function gr:rooms/2/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 4 run function gr:rooms/2/orange/judge
# Loop
execute if score orange gr_teamphase matches 3..4 run schedule function gr:rooms/2/orange/master 1t