
#scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 2
scoreboard players set second master.timer 60
scoreboard players set pause master.timer 0

team join timer :
# scoreboard players set : hitw_sb 1

function master:timer/timeleft/sec
