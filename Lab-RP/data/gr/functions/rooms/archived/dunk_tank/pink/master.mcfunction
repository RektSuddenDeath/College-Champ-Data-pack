
# Enter Divider
execute if score pink gr_teamphase matches 13 run function gr:rooms/7/pink/entry
# Judge Conditions
execute if score pink gr_teamphase matches 14 run function gr:rooms/7/pink/judge
# Loop
execute if score pink gr_teamphase matches 13..14 run schedule function gr:rooms/7/pink/master 1t