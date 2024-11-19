
# Enter Divider
execute if score purple gr_teamphase matches 17 run function gr:rooms/9/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 18 run function gr:rooms/9/purple/judge
# Loop
execute if score purple gr_teamphase matches 17..18 run schedule function gr:rooms/9/purple/master 1t