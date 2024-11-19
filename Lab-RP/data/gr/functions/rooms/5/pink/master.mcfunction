
# Enter Divider
execute if score pink gr_teamphase matches 9 run function gr:rooms/5/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 10 run function gr:rooms/5/pink/judge
# Loop
execute if score pink gr_teamphase matches 9..10 run schedule function gr:rooms/5/pink/master 1t