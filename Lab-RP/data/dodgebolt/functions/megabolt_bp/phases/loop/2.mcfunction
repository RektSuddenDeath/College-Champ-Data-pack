
# Intermission Phase.
execute unless score pause master.timer matches 1 run scoreboard players remove timer megabolt_bp 1

execute if score timer megabolt_bp matches 200 run execute as @a at @s run function dodgebolt:megabolt_bp/music/init

execute if score timer megabolt_bp matches 60 run function dodgebolt:timeannounce/3
execute if score timer megabolt_bp matches 60 run title @a title "§b即将开始"
execute if score timer megabolt_bp matches 40 run function dodgebolt:timeannounce/2
execute if score timer megabolt_bp matches 40 run title @a title "§b即将开始"
execute if score timer megabolt_bp matches 20 run function dodgebolt:timeannounce/1
execute if score timer megabolt_bp matches 20 run title @a title "§b即将开始"

execute if score timer megabolt_bp matches ..0 run function dodgebolt:megabolt_bp/phases/next/2 
execute if score phase megabolt_bp matches 2 run schedule function dodgebolt:megabolt_bp/phases/loop/2 1t