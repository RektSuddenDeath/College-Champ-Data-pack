
# Enter Divider
execute if score green gr_teamphase matches 5 run function gr:rooms/3/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 6 run function gr:rooms/3/green/judge
# Loop
execute if score green gr_teamphase matches 5..6 run schedule function gr:rooms/3/green/master 1t