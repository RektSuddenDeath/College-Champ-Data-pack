
execute if score gameflag SotGame matches 1 as @a[tag=!mutemusic] at @s run playsound minecraft:music.sot.loop voice @s
execute if score gameflag SotGame matches 1 run schedule function sot:music/loop 5054t