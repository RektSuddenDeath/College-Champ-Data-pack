
clear @a[scores={bm_death=1..}]
gamemode survival @a[scores={bm_death=1..}]
execute as @a[scores={bm_death=1..}] run function buildmart:kit
execute as @a[scores={bm_death=1..}] run function buildmart:deathmsg
scoreboard players set @a bm_death 0