
# Enter Divider
execute if score purple gr_teamphase matches 7 run function gr:rooms/4/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 8 run function gr:rooms/4/purple/judge
# Loop
execute if score purple gr_teamphase matches 7..8 run schedule function gr:rooms/4/purple/master 1t