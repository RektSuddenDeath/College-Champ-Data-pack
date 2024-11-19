
schedule clear master:timer/timeleft/sec

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 0
scoreboard players set second master.timer 11
scoreboard players set pause master.timer 0

team join timer :

scoreboard players set : db_sb 3

function master:timer/backtohub/sec