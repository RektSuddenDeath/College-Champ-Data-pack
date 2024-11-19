
execute as @e[type=minecart,tag=rrr_minecart,tag=!default_fuel] run scoreboard players set @s rrr_minecart_power 20
execute as @e[type=minecart,tag=rrr_minecart,tag=!default_fuel] run tag @s add default_fuel

# 消耗1点能量，连续过弯的矿车不消耗能量。
execute as @e[type=minecart,tag=rrr_minecart,tag=!no_consume] run scoreboard players remove @s rrr_minecart_power 1

# Cleanup
execute as @e[type=minecart,tag=rrr_minecart] run tag @s remove no_consume


execute as @e[type=minecart,tag=rrr_minecart] at @s run function railroadrush:minecart_action/determine_power


execute if score gameflag rrr_game matches 1 run schedule function railroadrush:minecart_action/power 4t