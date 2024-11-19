
# Enter Divider
execute if score pink gr_teamphase matches 5 run function gr:rooms/3/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 6 run function gr:rooms/3/pink/judge
# Loop
execute if score pink gr_teamphase matches 5..6 run schedule function gr:rooms/3/pink/master 1t