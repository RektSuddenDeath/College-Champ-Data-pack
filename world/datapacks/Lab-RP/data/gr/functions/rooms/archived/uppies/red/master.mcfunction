
# Enter Divider
execute if score red gr_teamphase matches 13 run function gr:rooms/7/red/entry
# Judge Conditions
execute if score red gr_teamphase matches 14 run function gr:rooms/7/red/judge
# Loop
execute if score red gr_teamphase matches 13..14 run schedule function gr:rooms/7/red/master 1t