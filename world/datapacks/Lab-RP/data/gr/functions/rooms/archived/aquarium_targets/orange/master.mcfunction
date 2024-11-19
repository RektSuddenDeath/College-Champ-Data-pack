
# Enter Divider
execute if score orange gr_teamphase matches 1 run function gr:rooms/1/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 2 run function gr:rooms/1/orange/judge
# Loop
execute if score orange gr_teamphase matches 1..2 run schedule function gr:rooms/1/orange/master 1t