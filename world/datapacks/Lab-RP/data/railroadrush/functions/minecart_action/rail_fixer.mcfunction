
execute as @e[type=minecart,tag=rail_fixer,tag=test] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ white_terracotta
execute as @e[type=minecart,tag=rail_fixer,tag=team_red] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ red_terracotta
execute as @e[type=minecart,tag=rail_fixer,tag=team_blue] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ blue_terracotta
execute as @e[type=minecart,tag=rail_fixer,tag=team_green] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ green_terracotta
execute as @e[type=minecart,tag=rail_fixer,tag=team_yellow] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ yellow_terracotta
execute as @e[type=minecart,tag=rail_fixer,tag=team_cyan] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ cyan_terracotta
execute as @e[type=minecart,tag=rail_fixer,tag=team_pink] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ pink_terracotta
execute as @e[type=minecart,tag=rail_fixer,tag=team_orange] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ orange_terracotta
execute as @e[type=minecart,tag=rail_fixer,tag=team_purple] at @s if block ~ ~ ~ #rails run setblock ~ ~-1 ~ purple_terracotta

execute as @e[type=minecart,tag=rail_fixer] store result score @s rrr_distance_this run data get entity @s Pos[0]
execute as @e[type=minecart,tag=rail_fixer] run scoreboard players remove @s rrr_distance_this 80007

execute as @e[type=minecart,tag=rail_fixer,tag=cp1] if score @s rrr_distance_this matches 125.. run kill @s
execute as @e[type=minecart,tag=rail_fixer,tag=cp2] if score @s rrr_distance_this matches 225.. run kill @s
execute as @e[type=minecart,tag=rail_fixer,tag=cp3] if score @s rrr_distance_this matches 325.. run kill @s
execute as @e[type=minecart,tag=rail_fixer,tag=cp4] if score @s rrr_distance_this matches 425.. run kill @s

execute if score gameflag rrr_game matches 1 run schedule function railroadrush:minecart_action/rail_fixer 2t