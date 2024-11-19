
# Enter Divider
execute if score green gr_teamphase matches 9 run function gr:rooms/5/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 10 run function gr:rooms/5/green/judge
# Loop
execute if score green gr_teamphase matches 9..10 run schedule function gr:rooms/5/green/master 1t