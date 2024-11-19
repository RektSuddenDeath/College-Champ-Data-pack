
# Enter Divider
execute if score red gr_teamphase matches 3 run function gr:rooms/2/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 4 run function gr:rooms/2/red/judge
# Loop
execute if score red gr_teamphase matches 3..4 run schedule function gr:rooms/2/red/master 1t