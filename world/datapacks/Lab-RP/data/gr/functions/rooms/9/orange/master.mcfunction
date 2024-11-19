
# Enter Divider
execute if score orange gr_teamphase matches 17 run function gr:rooms/9/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 18 run function gr:rooms/9/orange/judge
# Loop
execute if score orange gr_teamphase matches 17..18 run schedule function gr:rooms/9/orange/master 1t