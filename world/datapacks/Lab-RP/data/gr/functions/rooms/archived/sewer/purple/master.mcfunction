
# Enter Divider
execute if score purple gr_teamphase matches 9 run function gr:rooms/5/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 10 run function gr:rooms/5/purple/judge
# Loop
execute if score purple gr_teamphase matches 9..10 run schedule function gr:rooms/5/purple/master 1t