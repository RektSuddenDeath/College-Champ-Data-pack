
schedule clear master:timer/starting/sec

#scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 4
scoreboard players set second master.timer 30
scoreboard players set pause master.timer 0

team join timer :

scoreboard players set : rsr_sb 2
scoreboard players set : sba_sb 4

function master:timer/timeleft/sec
