
# Enter Divider
execute if score red gr_teamphase matches 1 run function gr:rooms/1/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 2 run function gr:rooms/1/red/judge
# Loop
execute if score red gr_teamphase matches 1..2 run schedule function gr:rooms/1/red/master 1t