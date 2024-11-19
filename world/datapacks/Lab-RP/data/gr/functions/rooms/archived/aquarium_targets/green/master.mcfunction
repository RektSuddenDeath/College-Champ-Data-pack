
# Enter Divider
execute if score green gr_teamphase matches 1 run function gr:rooms/1/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 2 run function gr:rooms/1/green/judge
# Loop
execute if score green gr_teamphase matches 1..2 run schedule function gr:rooms/1/green/master 1t