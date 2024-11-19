
# Enter Divider
execute if score orange gr_teamphase matches 15 run function gr:rooms/8/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 16 run function gr:rooms/8/orange/judge
# Loop
execute if score orange gr_teamphase matches 15..16 run schedule function gr:rooms/8/orange/master 1t