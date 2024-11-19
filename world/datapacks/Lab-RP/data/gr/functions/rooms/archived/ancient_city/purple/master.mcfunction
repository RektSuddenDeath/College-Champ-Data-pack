
# Enter Divider
execute if score purple gr_teamphase matches 5 run function gr:rooms/3/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 6 run function gr:rooms/3/purple/judge
# Loop
execute if score purple gr_teamphase matches 5..6 run schedule function gr:rooms/3/purple/master 1t