
# Enter Divider
execute if score purple gr_teamphase matches 1 run function gr:rooms/1/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 2 run function gr:rooms/1/purple/judge
# Loop
execute if score purple gr_teamphase matches 1..2 run schedule function gr:rooms/1/purple/master 1t