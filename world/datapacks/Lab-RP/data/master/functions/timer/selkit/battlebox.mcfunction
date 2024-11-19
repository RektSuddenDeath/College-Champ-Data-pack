
schedule clear master:timer/starting/sec
schedule clear master:timer/nextround/sec

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 0
execute if score remix bb_game matches 0 run scoreboard players set second master.timer 16
execute if score remix bb_game matches 1 run scoreboard players set second master.timer 26

scoreboard players set pause master.timer 0

team join timer :


scoreboard players set : bb_sb 13
scoreboard players set : bb_sb_red 13
scoreboard players set : bb_sb_blue 13
scoreboard players set : bb_sb_green 13
scoreboard players set : bb_sb_yellow 13
scoreboard players set : bb_sb_orange 13
scoreboard players set : bb_sb_purple 13
scoreboard players set : bb_sb_pink 13
scoreboard players set : bb_sb_cyan 13

function master:timer/selkit/sec