
# Enter Divider
execute if score orange gr_teamphase matches 7 run function gr:rooms/4/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 8 run function gr:rooms/4/orange/judge
# Loop
execute if score orange gr_teamphase matches 7..8 run schedule function gr:rooms/4/orange/master 1t