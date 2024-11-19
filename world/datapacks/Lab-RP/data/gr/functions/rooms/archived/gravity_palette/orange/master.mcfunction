
# Enter Divider
execute if score orange gr_teamphase matches 11 run function gr:rooms/6/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 12 run function gr:rooms/6/orange/judge
# Loop
execute if score orange gr_teamphase matches 11..12 run schedule function gr:rooms/6/orange/master 1t