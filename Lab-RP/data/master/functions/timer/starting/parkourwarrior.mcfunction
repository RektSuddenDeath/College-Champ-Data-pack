
schedule clear master:timer/timeleft/sec

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 1
scoreboard players set second master.timer 1
scoreboard players set pause master.timer 0

team join timer :

scoreboard players reset §1 pkw_sb
scoreboard players set : pkw_sb 1

function master:timer/starting/sec