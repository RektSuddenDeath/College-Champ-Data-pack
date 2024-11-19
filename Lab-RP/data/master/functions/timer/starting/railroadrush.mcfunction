

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 1
scoreboard players set second master.timer 5
scoreboard players set pause master.timer 0

function master:timer/starting/sec