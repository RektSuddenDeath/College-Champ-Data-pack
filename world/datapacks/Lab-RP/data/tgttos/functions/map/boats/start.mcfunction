
scoreboard players set RoundActive tourney_stats 1

# Scoreboard
function tgttos:scoreboard/ingame
# Get rid of barrier
fill -7478 102 -6488 -7495 105 -6485 air
title @a title ""
title @a subtitle ""
# Start Detecting kills
function tgttos:detect
function tgttos:map/boats/fall

function master:timer/timeleft/1min30
# Adjust Player attributes to allow punching

# Give a boat
give @a[team=!spec] oak_boat
function tgttos:map/boats/core
# Play Music
stopsound @a voice minecraft:music.gameintro
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1
execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.tgttos voice @s ~ ~ ~ 1

# noplace
schedule clear tgttos:map/boats/noplace
function tgttos:map/boats/spawnprot