
scoreboard objectives remove master.timer
scoreboard objectives add master.timer dummy "General Timer"

scoreboard players set minute master.timer 1
scoreboard players set second master.timer 45
scoreboard players set pause master.timer 0

team join timer :

scoreboard players set : bm_redsb 8
scoreboard players set : bm_bluesb 8
scoreboard players set : bm_yellowsb 8
scoreboard players set : bm_greensb 8
scoreboard players set : bm_cyansb 8
scoreboard players set : bm_orangesb 8
scoreboard players set : bm_purplesb 8
scoreboard players set : bm_pinksb 8
function master:timer/starting/sec