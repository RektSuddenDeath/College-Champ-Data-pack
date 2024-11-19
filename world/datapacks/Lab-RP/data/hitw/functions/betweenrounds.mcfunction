
scoreboard players add round hitw_game 1
# Reset Arena

kill @e[type=marker,tag=wall_mover]
fill -4992 112 -4980 -5007 118 -5019 air
fill -5019 118 -5007 -4980 112 -4992 air


# Reset Random Seed
scoreboard players set prevdirection hitw_wall -1
scoreboard players set prevwall hitw_wall -1
scoreboard players set movementreq hitw_wall -1

# Reset Time
scoreboard players set maxtick hitw_time 9
scoreboard players set tick hitw_time 9
scoreboard players set wallcount hitw_wall 0
scoreboard players set movementreq hitw_wall 999
scoreboard players set currentwallmoves hitw_wall 0
# Scoreboard

execute if score round hitw_game matches 1 run team modify placeholder_4 suffix "1/3"
execute if score round hitw_game matches 2 run team modify placeholder_4 suffix "2/3"
execute if score round hitw_game matches 3 run team modify placeholder_4 suffix "3/3"

function master:timer/starting/15s
schedule clear master:timer/nextround/sec

function hitw:beginlistener
# Teleports Players

execute if score platform_shape hitw_game matches 1 run function hitw:platform_shape/1/init
execute if score platform_shape hitw_game matches 2 run function hitw:platform_shape/2/init
execute if score platform_shape hitw_game matches 3 run function hitw:platform_shape/3/init
execute if score platform_shape hitw_game matches 4 run function hitw:platform_shape/4/init
execute if score platform_shape hitw_game matches 5 run function hitw:platform_shape/5/init
execute if score platform_shape hitw_game matches 6 run function hitw:platform_shape/6/init

# Clear Walls Dodged
scoreboard players set @a hitw_round_dodged 0

team modify placeholder_2 suffix "简单 / 100%"
