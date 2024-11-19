
# Enter Divider
execute if score purple gr_teamphase matches 13 run function gr:rooms/7/purple/entry
# Judge Conditions
execute if score purple gr_teamphase matches 14 run function gr:rooms/7/purple/judge
# Loop
execute if score purple gr_teamphase matches 13..14 run schedule function gr:rooms/7/purple/master 1t