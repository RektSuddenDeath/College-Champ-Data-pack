
scoreboard players set RoundActive tourney_stats 0
scoreboard players set gameflag tgttos_game 0

# Cleanup
gamemode spectator @a
schedule clear tgttos:map/industry/fall
schedule clear tgttos:map/industry/noplace

# Cleanup
forceload add -6945 -7018 -7010 -6957
schedule function tgttos:map/industry/cleanup 10s

# function master:timer/nextround/10s
# schedule function tgttos:map/cliff/initiate 10s
# # Game end broadcast
# stopsound @a voice
# execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
# title @a times 0 40 20
# title @a title ["",{"text": "回合结束！","bold": true,"color":"red"}]

# # Reset state
# execute as @a run attribute @s generic.attack_damage base set -100
# execute as @e[type=chicken] run tp @s ~ -64 ~
