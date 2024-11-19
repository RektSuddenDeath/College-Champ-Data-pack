
scoreboard players add intro OvertimeMusic 1

execute if score RoundActive tourney_stats matches 1 if score intro OvertimeMusic matches 21 run execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.overtime_loop voice @s ~ ~ ~ 1
execute if score RoundActive tourney_stats matches 1 if score intro OvertimeMusic matches 21 run function master:overtime/loop
execute if score RoundActive tourney_stats matches 1 if score intro OvertimeMusic matches 0..20 run schedule function master:overtime/intro 1t
execute if score RoundActive tourney_stats matches 0 run scoreboard players set OvertimeActive OvertimeMusic 0