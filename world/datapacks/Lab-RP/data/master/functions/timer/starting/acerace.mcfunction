
scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 1
scoreboard players set second master.timer 1
scoreboard players set pause master.timer 0

team join timer :

scoreboard players set : ar_sb 6

function master:timer/starting/sec