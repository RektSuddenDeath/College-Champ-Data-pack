
# Enter Divider
execute if score red gr_teamphase matches 7 run function gr:rooms/4/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 8 run function gr:rooms/4/red/judge
# Loop
execute if score red gr_teamphase matches 7..8 run schedule function gr:rooms/4/red/master 1t