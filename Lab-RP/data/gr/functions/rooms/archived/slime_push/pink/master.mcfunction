
# Enter Divider
execute if score pink gr_teamphase matches 15 run function gr:rooms/8/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 16 run function gr:rooms/8/pink/judge
# Loop
execute if score pink gr_teamphase matches 15..16 run schedule function gr:rooms/8/pink/master 1t