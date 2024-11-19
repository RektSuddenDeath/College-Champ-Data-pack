
# Enter Divider
execute if score pink gr_teamphase matches 11 run function gr:rooms/6/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 12 run function gr:rooms/6/pink/judge
# Loop
execute if score pink gr_teamphase matches 11..12 run schedule function gr:rooms/6/pink/master 1t