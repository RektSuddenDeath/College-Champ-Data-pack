
stopsound @a voice minecraft:music.dodgebolt
stopsound @a voice minecraft:music.dodgebolt_short
scoreboard players set overtimeloop db_game 0
scoreboard players set overtimeactive db_game 1
execute as @a at @s run playsound minecraft:music.dodgebolt_overtime voice @s ~ ~ ~ 1
function dodgebolt:music/overtimeloop