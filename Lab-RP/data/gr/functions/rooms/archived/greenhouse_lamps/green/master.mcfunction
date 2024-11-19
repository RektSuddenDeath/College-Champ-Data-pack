
# Enter Divider
execute if score green gr_teamphase matches 7 run function gr:rooms/4/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 8 run function gr:rooms/4/green/judge
# Loop
execute if score green gr_teamphase matches 7..8 run schedule function gr:rooms/4/green/master 1t