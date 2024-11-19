
# Enter Divider
execute if score orange gr_teamphase matches 9 run function gr:rooms/5/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 10 run function gr:rooms/5/orange/judge
# Loop
execute if score orange gr_teamphase matches 9..10 run schedule function gr:rooms/5/orange/master 1t