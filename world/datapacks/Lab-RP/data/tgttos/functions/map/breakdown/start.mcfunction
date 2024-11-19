
scoreboard players set RoundActive tourney_stats 1

# Scoreboard
function tgttos:scoreboard/ingame
# Get rid of barrier
fill -12510 104 -12496 -12491 107 -12499 air
title @a title ""
title @a subtitle ""
# Start Detecting kills
function tgttos:detect
# function tgttos:map/breakdown/fall

function master:timer/timeleft/1min30
# Adjust Player attributes to allow punching

execute as @a[team=!spec] run attribute @s generic.attack_damage base set 1000

# Play Music
stopsound @a voice minecraft:music.gameintro
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1
execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.tgttos voice @s ~ ~ ~ 1

# MAP SPECIFIC
# Randomize Active breakdown
function tgttos:map/breakdown/randomize


# noplace
schedule clear tgttos:map/breakdown/noplace
function tgttos:map/breakdown/spawnprot