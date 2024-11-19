
# Enter Divider
execute if score cyan gr_teamphase matches 13 run function gr:rooms/7/cyan/entry
# Judge Conditions
execute if score cyan gr_teamphase matches 14 run function gr:rooms/7/cyan/judge
# Loop
execute if score cyan gr_teamphase matches 13..14 run schedule function gr:rooms/7/cyan/master 1t