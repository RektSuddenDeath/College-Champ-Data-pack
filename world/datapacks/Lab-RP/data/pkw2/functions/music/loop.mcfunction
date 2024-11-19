
scoreboard players add loop pkw2_music 1

execute if score loop pkw2_music matches 2400 run execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.pkw_loop voice @s ~ ~ ~ 1
execute if score loop pkw2_music matches 2400 run scoreboard players set loop pkw2_music 0

execute if score RoundActive tourney_stats matches 1 run schedule function pkw2:music/loop 1t