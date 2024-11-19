
scoreboard players add tick megabolt_bp_music 1
execute if score tick megabolt_bp_music matches 2746.. run execute as @a at @s run playsound music.bw_bridges_prelude voice @s
execute if score tick megabolt_bp_music matches 2746.. run scoreboard players set tick megabolt_bp_music 0

execute unless score phase megabolt_bp matches 1..4 run stopsound @a voice music.bw_bridges_prelude
execute if score phase megabolt_bp matches 1..4 run schedule function dodgebolt:megabolt_bp/music/loop 1t