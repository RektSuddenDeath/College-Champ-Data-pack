
scoreboard players set current u_tickfix 0
scoreboard players set this_time u_tickfix 0
scoreboard players set this_factor u_tickfix 0

scoreboard players set this_tickrate u_tickfix 0

schedule clear utils:tickfix/loop
tellraw @s ["§6[§r瀞§r] Disabled low tick time compensation."]
