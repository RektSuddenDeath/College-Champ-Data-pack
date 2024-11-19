
tp @a[team=!spec] -10000 103 -10000

tag @a[team=!spec] add dd_swappedPlayer

clear @a[team=!spec]
give @a[team=!spec] iron_sword{Unbreakable:1b}
effect clear @a resistance

scoreboard players set @a univ_death 0

function decisiondome:vote/remix_loop/7