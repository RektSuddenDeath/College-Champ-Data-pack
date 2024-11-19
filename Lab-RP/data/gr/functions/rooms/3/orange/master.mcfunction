
# Enter Divider
execute if score orange gr_teamphase matches 5 run function gr:rooms/3/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 6 run function gr:rooms/3/orange/judge
# Loop
execute if score orange gr_teamphase matches 5..6 run schedule function gr:rooms/3/orange/master 1t