
schedule clear master:timer/timeleft/sec

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 0
scoreboard players set second master.timer 36
scoreboard players set pause master.timer 0

team join timer :

scoreboard players reset §4 tourney_sb
scoreboard players set : tourney_sb 4


function master:timer/decisiondome/sec