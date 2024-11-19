
# Enter Divider
execute if score green gr_teamphase matches 13 run function gr:rooms/7/green/entry
# Judge Conditions
execute if score green gr_teamphase matches 14 run function gr:rooms/7/green/judge
# Loop
execute if score green gr_teamphase matches 13..14 run schedule function gr:rooms/7/green/master 1t