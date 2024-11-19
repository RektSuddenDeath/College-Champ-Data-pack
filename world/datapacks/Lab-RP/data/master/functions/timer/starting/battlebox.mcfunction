
schedule clear master:timer/timeleft/sec

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

execute if score remix bb_game matches 0 run scoreboard players set minute master.timer 1
execute if score remix bb_game matches 0 run scoreboard players set second master.timer 11

execute if score remix bb_game matches 1 run scoreboard players set minute master.timer 3
execute if score remix bb_game matches 1 run scoreboard players set second master.timer 60

scoreboard players set pause master.timer 0

team join timer :

scoreboard players reset §1 bb_sb
scoreboard players set : bb_sb 1

function master:timer/starting/sec