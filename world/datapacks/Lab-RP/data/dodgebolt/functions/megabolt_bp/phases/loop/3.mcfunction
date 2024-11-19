


# Timeout Possible.
execute unless score pause master.timer matches 1 run scoreboard players remove timer megabolt_bp 1
execute if score timer megabolt_bp matches 0 if score teamPicking megabolt_bp matches 1 run function dodgebolt:megabolt_bp/phases/teamone_timeout
execute if score timer megabolt_bp matches 0 if score teamPicking megabolt_bp matches 2 run function dodgebolt:megabolt_bp/phases/teamtwo_timeout

# Pick Detect
execute if score teamPicking megabolt_bp matches 1 if score teamOnePicks megabolt_bp matches 0 if block 17004 110 17003 #railroadrush:concrete run function dodgebolt:megabolt_bp/phases/selected/1_1
execute if score teamPicking megabolt_bp matches 1 if score teamOnePicks megabolt_bp matches 1 if block 17007 110 17003 #railroadrush:concrete run function dodgebolt:megabolt_bp/phases/selected/1_2
execute if score teamPicking megabolt_bp matches 1 if score teamOnePicks megabolt_bp matches 2 if block 17010 110 17003 #railroadrush:concrete run function dodgebolt:megabolt_bp/phases/selected/1_3

execute if score teamPicking megabolt_bp matches 2 if score teamTwoPicks megabolt_bp matches 0 if block 16996 110 17003 #railroadrush:concrete run function dodgebolt:megabolt_bp/phases/selected/2_1
execute if score teamPicking megabolt_bp matches 2 if score teamTwoPicks megabolt_bp matches 1 if block 16993 110 17003 #railroadrush:concrete run function dodgebolt:megabolt_bp/phases/selected/2_2
execute if score teamPicking megabolt_bp matches 2 if score teamTwoPicks megabolt_bp matches 2 if block 16990 110 17003 #railroadrush:concrete run function dodgebolt:megabolt_bp/phases/selected/2_3


# Both Team have completed picking.
execute if score teamOnePicks megabolt_bp matches 3 if score teamTwoPicks megabolt_bp matches 3 run function dodgebolt:megabolt_bp/phases/next/3

# Loop
execute if score phase megabolt_bp matches 3 run schedule function dodgebolt:megabolt_bp/phases/loop/3 1t