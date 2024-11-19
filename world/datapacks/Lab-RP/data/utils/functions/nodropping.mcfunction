
scoreboard players set may_drop_items tourney_stats 0
execute as @e[type=item] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item] run data merge entity @s {PickupDelay:0}

schedule function utils:nodropping 1t