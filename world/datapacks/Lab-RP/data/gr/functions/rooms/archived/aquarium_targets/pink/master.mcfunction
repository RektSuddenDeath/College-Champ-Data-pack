
# Enter Divider
execute if score pink gr_teamphase matches 1 run function gr:rooms/1/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 2 run function gr:rooms/1/pink/judge
# Loop
execute if score pink gr_teamphase matches 1..2 run schedule function gr:rooms/1/pink/master 1t