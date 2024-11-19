
scoreboard players add musictick ar_game 1
execute if score musictick ar_game matches 3150 run scoreboard players set musictick ar_game 0
execute if score musictick ar_game matches 0 run execute as @a at @s run playsound music.ace_race_loop voice @s
execute if score OvertimeActive OvertimeMusic matches 1 run stopsound @a voice music.ace_race_loop
execute if score OvertimeActive OvertimeMusic matches 0 if score gameflag ar_game matches 1 run schedule function acerace3:sfx/loop 1t