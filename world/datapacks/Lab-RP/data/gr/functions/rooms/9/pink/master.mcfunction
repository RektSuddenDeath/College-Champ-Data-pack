
# Enter Divider
execute if score pink gr_teamphase matches 17 run function gr:rooms/9/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 18 run function gr:rooms/9/pink/judge
# Loop
execute if score pink gr_teamphase matches 17..18 run schedule function gr:rooms/9/pink/master 1t