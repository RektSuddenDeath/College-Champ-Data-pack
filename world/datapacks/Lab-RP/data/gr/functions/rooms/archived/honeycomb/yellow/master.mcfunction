
# Enter Divider
execute if score yellow gr_teamphase matches 13 run function gr:rooms/7/yellow/entry
# Judge Conditions
execute if score yellow gr_teamphase matches 14 run function gr:rooms/7/yellow/judge
# Loop
execute if score yellow gr_teamphase matches 13..14 run schedule function gr:rooms/7/yellow/master 1t