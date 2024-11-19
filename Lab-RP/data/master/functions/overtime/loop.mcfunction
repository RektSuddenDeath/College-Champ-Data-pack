
scoreboard players add loop OvertimeMusic 1

execute if score RoundActive tourney_stats matches 1 if score loop OvertimeMusic matches 480 run execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.overtime_loop voice @s ~ ~ ~ 1
execute if score RoundActive tourney_stats matches 1 if score loop OvertimeMusic matches 480 run scoreboard players set loop OvertimeMusic 0
execute if score RoundActive tourney_stats matches 1 run schedule function master:overtime/loop 1t
execute if score RoundActive tourney_stats matches 0 run scoreboard players set OvertimeActive OvertimeMusic 0