
# Enter Divider
execute if score orange gr_teamphase matches 13 run function gr:rooms/7/orange/entry
# Judge Conditions
execute if score orange gr_teamphase matches 14 run function gr:rooms/7/orange/judge
# Loop
execute if score orange gr_teamphase matches 13..14 run schedule function gr:rooms/7/orange/master 1t