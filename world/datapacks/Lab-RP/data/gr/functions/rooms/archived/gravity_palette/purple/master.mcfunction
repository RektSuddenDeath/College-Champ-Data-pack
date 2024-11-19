
# Enter Divider
execute if score purple gr_teamphase matches 11 run function gr:rooms/6/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 12 run function gr:rooms/6/purple/judge
# Loop
execute if score purple gr_teamphase matches 11..12 run schedule function gr:rooms/6/purple/master 1t