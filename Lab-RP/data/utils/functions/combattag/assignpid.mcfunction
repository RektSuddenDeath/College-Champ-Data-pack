
scoreboard objectives add univ_t dummy
execute as @a[team=!spec] run scoreboard players add playerCount univ_t 1
scoreboard players set @a[team=!spec] univ_pid -1
scoreboard players set currentID univ_t 1
function utils:combattag/loopassign
scoreboard objectives remove univ_t