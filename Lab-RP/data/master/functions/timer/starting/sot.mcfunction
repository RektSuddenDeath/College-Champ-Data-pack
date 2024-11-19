
scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 2
scoreboard players set second master.timer 31
scoreboard players set pause master.timer 0

team join timer :

scoreboard players set : Sotsb_red 4
scoreboard players set : Sotsb_blue 4
scoreboard players set : Sotsb_green 4
scoreboard players set : Sotsb_yellow 4

function master:timer/starting/sec