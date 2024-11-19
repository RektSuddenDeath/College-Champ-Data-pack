
# Enter Divider
execute if score red gr_teamphase matches 17 run function gr:rooms/9/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 18 run function gr:rooms/9/red/judge
# Loop
execute if score red gr_teamphase matches 17..18 run schedule function gr:rooms/9/red/master 1t