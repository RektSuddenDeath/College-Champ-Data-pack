
stopsound @a voice
scoreboard objectives add OvertimeMusic dummy "Overtime_Music"
scoreboard players set OvertimeActive OvertimeMusic 1
scoreboard players set intro OvertimeMusic 0
scoreboard players set loop OvertimeMusic 0
execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.overtime_intro voice @s ~ ~ ~ 1

function master:overtime/intro