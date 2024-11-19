
execute unless score pause master.timer matches 1 run scoreboard players remove timer megabolt_bp 1

execute if score timer megabolt_bp matches 70 run effect give @a levitation 5 0 true
execute if score timer megabolt_bp matches 70 run title @a subtitle ""
execute if score timer megabolt_bp matches 70 run title @a title {"text": "\ue012","font": "font:font"}
execute if score timer megabolt_bp matches 70 run title @a times 60 60 0

execute if score timer megabolt_bp matches ..0 run function dodgebolt:megabolt_bp/phases/next/4
execute if score phase megabolt_bp matches 4 run schedule function dodgebolt:megabolt_bp/phases/loop/4 1t