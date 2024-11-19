
# Enter Divider
execute if score green gr_teamphase matches 11 run function gr:rooms/6/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 12 run function gr:rooms/6/green/judge
# Loop
execute if score green gr_teamphase matches 11..12 run schedule function gr:rooms/6/green/master 1t