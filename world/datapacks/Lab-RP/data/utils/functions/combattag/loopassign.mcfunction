
execute as @r[team=!spec,scores={univ_pid=..-1}] run scoreboard players operation @s univ_pid = currentID univ_t

scoreboard players add currentID univ_t 1
execute if score currentID univ_t <= playerCount univ_t run function utils:combattag/loopassign
execute if score currentID univ_t > playerCount univ_t run function utils:combattag/applyadvancement