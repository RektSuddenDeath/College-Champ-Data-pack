

scoreboard players operation sec megabolt_bp = timer megabolt_bp
scoreboard players operation sec megabolt_bp /= 20 math

scoreboard players operation sec_round megabolt_bp = timer megabolt_bp
scoreboard players operation sec_round megabolt_bp %= 20 math

execute if score sec_round megabolt_bp matches 1.. run scoreboard players add sec megabolt_bp 1

scoreboard players operation timedigit1 megabolt_bp = sec megabolt_bp
scoreboard players operation timedigit2 megabolt_bp = sec megabolt_bp

execute store result storage megabolt:display timedigit_1 int 1 run scoreboard players operation timedigit1 megabolt_bp /= 10 math
execute store result storage megabolt:display timedigit_2 int 1 run scoreboard players operation timedigit2 megabolt_bp %= 10 math

# Number Structures
execute if score sec megabolt_bp matches 0.. run function dodgebolt:megabolt_bp/timer_structure/double_digit with storage megabolt:display
#execute if score sec megabolt_bp matches ..9 run function dodgebolt:megabolt_bp/timer_structure/single_digit with storage megabolt:display

execute if score phase megabolt_bp matches 1..4 run schedule function dodgebolt:megabolt_bp/global_loop 1t