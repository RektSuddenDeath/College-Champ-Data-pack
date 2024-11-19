
schedule clear master:timer/starting/sec

#scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 3
scoreboard players set second master.timer 60
scoreboard players set pause master.timer 0

team join timer :



function master:timer/timeleft/sec
