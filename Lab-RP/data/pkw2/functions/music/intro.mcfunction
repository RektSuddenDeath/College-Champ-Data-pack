scoreboard players add intro pkw2_music 1

execute if score intro pkw2_music matches 293 if score RoundActive tourney_stats matches 1 run execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.pkw_loop voice @s ~ ~ ~ 1
execute if score intro pkw2_music matches 293 if score RoundActive tourney_stats matches 1 run function pkw2:music/loop
execute if score intro pkw2_music matches 0..292 run schedule function pkw2:music/intro 1t