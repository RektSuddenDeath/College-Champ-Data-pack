
scoreboard players add musictick bm_game 1
execute if score musictick bm_game matches 4962 run stopsound @a voice music.buildmart
execute if score musictick bm_game matches 4962 run execute as @a at @s run playsound music.buildmart voice @s
execute if score musictick bm_game matches 4962 run scoreboard players set musictick bm_game 0

execute if score OvertimeActive OvertimeMusic matches 1 run stopsound @a voice music.buildmart
execute if score gameflag bm_game matches 0 run stopsound @a voice music.buildmart

execute if score gameflag bm_game matches 1 if score OvertimeActive OvertimeMusic matches 0 run schedule function buildmart:sfx/loop 1t