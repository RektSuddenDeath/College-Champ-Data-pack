
# Enter Divider
execute if score red gr_teamphase matches 15 run function gr:rooms/8/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 16 run function gr:rooms/8/red/judge
# Loop
execute if score red gr_teamphase matches 15..16 run schedule function gr:rooms/8/red/master 1t