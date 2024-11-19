
# Enter Divider
execute if score red gr_teamphase matches 5 run function gr:rooms/3/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 6 run function gr:rooms/3/red/judge
# Loop
execute if score red gr_teamphase matches 5..6 run schedule function gr:rooms/3/red/master 1t