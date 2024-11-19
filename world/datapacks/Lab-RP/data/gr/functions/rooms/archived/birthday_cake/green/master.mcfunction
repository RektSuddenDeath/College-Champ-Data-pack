
# Enter Divider
execute if score green gr_teamphase matches 15 run function gr:rooms/8/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 16 run function gr:rooms/8/green/judge
# Loop
execute if score green gr_teamphase matches 15..16 run schedule function gr:rooms/8/green/master 1t