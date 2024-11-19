
# Enter Divider
execute if score red gr_teamphase matches 9 run function gr:rooms/5/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 10 run function gr:rooms/5/red/judge
# Loop
execute if score red gr_teamphase matches 9..10 run schedule function gr:rooms/5/red/master 1t