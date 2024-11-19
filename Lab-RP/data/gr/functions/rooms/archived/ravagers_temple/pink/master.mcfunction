
# Enter Divider
execute if score pink gr_teamphase matches 3 run function gr:rooms/2/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 4 run function gr:rooms/2/pink/judge
# Loop
execute if score pink gr_teamphase matches 3..4 run schedule function gr:rooms/2/pink/master 1t