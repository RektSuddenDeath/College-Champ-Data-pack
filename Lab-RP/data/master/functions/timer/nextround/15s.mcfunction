
schedule clear master:timer/timeleft/sec
schedule clear master:timer/starting/sec

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 0
scoreboard players set second master.timer 16
scoreboard players set pause master.timer 0

team join timer :


function master:timer/nextround/sec