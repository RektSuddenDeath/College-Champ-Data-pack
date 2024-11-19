
# Enter Divider
execute if score purple gr_teamphase matches 3 run function gr:rooms/2/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 4 run function gr:rooms/2/purple/judge
# Loop
execute if score purple gr_teamphase matches 3..4 run schedule function gr:rooms/2/purple/master 1t