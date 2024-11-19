
execute as @a[scores={univ_death=1..}] run clear @s
execute as @a[scores={univ_death=1..}] run tag @s remove dd_swappedPlayer

scoreboard players set @a univ_death 0

schedule function decisiondome:vote/remix_loop/7 1t