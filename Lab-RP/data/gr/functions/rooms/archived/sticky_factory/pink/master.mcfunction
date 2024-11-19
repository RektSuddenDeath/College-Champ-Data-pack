
# Enter Divider
execute if score pink gr_teamphase matches 7 run function gr:rooms/4/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 8 run function gr:rooms/4/pink/judge
# Loop
execute if score pink gr_teamphase matches 7..8 run schedule function gr:rooms/4/pink/master 1t