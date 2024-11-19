
scoreboard objectives add u_tickfix dummy
# 0.1ms
scoreboard players set threshold u_tickfix 10000
scoreboard players set current u_tickfix 0
scoreboard players set this_time u_tickfix 0
scoreboard players set this_factor u_tickfix 0

scoreboard players set this_tickrate u_tickfix 0
## Only active while time loss is greater than 0.01s. (16.66tps,60mspt)
scoreboard players set reduce_amount u_tickfix 600
tellraw @s ["§6[§r瀞§r] Enabled low tick time compensation."]
function utils:tickfix/loop