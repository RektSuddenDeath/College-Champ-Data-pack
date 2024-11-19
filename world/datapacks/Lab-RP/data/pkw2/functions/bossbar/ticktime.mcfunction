
scoreboard players add bartick pkw2_game 1


execute if score bartick pkw2_game matches 1..10 run function pkw2:bossbar/ticktime/10
execute if score bartick pkw2_game matches 11..20 run function pkw2:bossbar/ticktime/20
execute if score bartick pkw2_game matches 21..30 run function pkw2:bossbar/ticktime/30
execute if score bartick pkw2_game matches 31..40 run function pkw2:bossbar/ticktime/40

execute if score gameflag pkw2_game matches 1 run schedule function pkw2:bossbar/ticktime 330t