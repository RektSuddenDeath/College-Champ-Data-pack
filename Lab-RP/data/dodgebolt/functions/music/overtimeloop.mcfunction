
scoreboard players add overtimeloop db_game 1
execute if score overtimeloop db_game matches 62 if score gameflag db_game matches 1 run execute as @a at @s run playsound minecraft:music.dodgebolt_overtime voice @s ~ ~ ~ 0.8
execute if score overtimeloop db_game matches 62 run scoreboard players set overtimeloop db_game 0
execute if score gameflag db_game matches 0 run stopsound @a voice minecraft:music.dodgebolt_overtime
execute if score gameflag db_game matches 0 run scoreboard players set overtimeactive db_game 0
execute if score gameflag db_game matches 1 run schedule function dodgebolt:music/overtimeloop 1t