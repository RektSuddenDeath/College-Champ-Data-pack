
scoreboard players set RoundActive tourney_stats 1

# Scoreboard
function tgttos:scoreboard/ingame
# Get rid of barrier
fill 17979 286 18042 17993 290 18042 air
title @a title ""
title @a subtitle ""
# Start Detecting kills
function tgttos:detect
function tgttos:map/caverndrive/fall

function master:timer/timeleft/1min30
# Adjust Player attributes to allow punching

# Play Music
stopsound @a voice minecraft:music.gameintro
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1
execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.tgttos voice @s ~ ~ ~ 1
