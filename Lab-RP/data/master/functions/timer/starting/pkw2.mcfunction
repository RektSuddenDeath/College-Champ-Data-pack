
scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 1
scoreboard players set second master.timer 31
scoreboard players set pause master.timer 0

team join timer :

scoreboard players set : pkw2_sb_red 14
scoreboard players set : pkw2_sb_blue 14
scoreboard players set : pkw2_sb_green 14
scoreboard players set : pkw2_sb_yellow 14
scoreboard players set : pkw2_sb_cyan 14
scoreboard players set : pkw2_sb_pink 14
scoreboard players set : pkw2_sb_orange 14
scoreboard players set : pkw2_sb_purple 14
scoreboard players set : pkw2_sb 14
function master:timer/starting/sec