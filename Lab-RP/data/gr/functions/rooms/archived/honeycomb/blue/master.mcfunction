
# Enter Divider
execute if score blue gr_teamphase matches 13 run function gr:rooms/7/blue/entry
# Judge Conditions
execute if score blue gr_teamphase matches 14 run function gr:rooms/7/blue/judge
# Loop
execute if score blue gr_teamphase matches 13..14 run schedule function gr:rooms/7/blue/master 1t