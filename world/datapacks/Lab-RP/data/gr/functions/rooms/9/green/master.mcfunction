
# Enter Divider
execute if score green gr_teamphase matches 17 run function gr:rooms/9/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 18 run function gr:rooms/9/green/judge
# Loop
execute if score green gr_teamphase matches 17..18 run schedule function gr:rooms/9/green/master 1t