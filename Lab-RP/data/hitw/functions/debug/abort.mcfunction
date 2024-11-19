
kill @e[type=armor_stand,tag=north]
kill @e[type=armor_stand,tag=south]
kill @e[type=armor_stand,tag=west]
kill @e[type=armor_stand,tag=east]
fill -4992 112 -4980 -5007 118 -5019 air
fill -5019 118 -5007 -4980 112 -4992 air

fill -5004 112 -5004 -4995 115 -5004 barrier
fill -4995 112 -4995 -4995 115 -5004 barrier
fill -4995 112 -4995 -5004 115 -4995 barrier
fill -5004 112 -5004 -5004 115 -4995 barrier
fill -4998 115 -5001 -5001 112 -4998 barrier
clone -4994 79 -5005 -5005 79 -4994 -5005 111 -5005

schedule clear hitw:wall/timer
schedule clear hitw:wall/fall
function master:timer/pause
scoreboard players set gameflag hitw_game 0

tellraw @s ["[§6DEBUG§r] Attempted to abort the game. A restart for the current round is needed. Might need to reduce round number by 1 to properly function."]