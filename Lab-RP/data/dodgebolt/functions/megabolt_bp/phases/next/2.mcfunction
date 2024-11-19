
title @a title ""
title @a subtitle ""

execute as @a at @s run playsound sound.start record @s

scoreboard players add phase megabolt_bp 1
scoreboard players set teamOnePicks megabolt_bp 0
scoreboard players set teamTwoPicks megabolt_bp 0
scoreboard players set teamPicking megabolt_bp 0
scoreboard players set timer megabolt_bp 900
function dodgebolt:megabolt_bp/phases/teamone_beginpick
function dodgebolt:megabolt_bp/phases/loop/3