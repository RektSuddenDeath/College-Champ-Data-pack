
schedule clear master:timer/timeleft/sec

scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 0
scoreboard players set second master.timer 31
scoreboard players set pause master.timer 0

team join timer :

scoreboard players reset §8 battlebox_sb
scoreboard players set : battlebox_sb 8

function master:timer/nextround/sec