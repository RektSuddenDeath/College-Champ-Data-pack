
# Enter Divider
execute if score red gr_teamphase matches 11 run function gr:rooms/6/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 12 run function gr:rooms/6/red/judge
# Loop
execute if score red gr_teamphase matches 11..12 run schedule function gr:rooms/6/red/master 1t