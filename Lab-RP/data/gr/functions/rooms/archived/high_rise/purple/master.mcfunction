
# Enter Divider
execute if score purple gr_teamphase matches 15 run function gr:rooms/8/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 16 run function gr:rooms/8/purple/judge
# Loop
execute if score purple gr_teamphase matches 15..16 run schedule function gr:rooms/8/purple/master 1t