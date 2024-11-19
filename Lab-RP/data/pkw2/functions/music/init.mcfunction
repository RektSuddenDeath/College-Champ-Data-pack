stopsound @a voice
scoreboard objectives add pkw2_music dummy "PKWMusic"
scoreboard players set intro pkw2_music 0
scoreboard players set loop pkw2_music 0
execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.pkw_loop voice @s ~ ~ ~ 1

function pkw2:music/loop