
scoreboard players set RoundActive tourney_stats 0

scoreboard players set gameflag tgttos_game 0

gamemode spectator @a
schedule clear tgttos:map/basins/fall


# forceload add -6431 -6512 -6505 -6481
# schedule function tgttos:map/basins/cleanup 10s

# function master:timer/nextround/10s
# schedule function tgttos:map/shallowlava/initiate 10s

# stopsound @a voice
# execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
# title @a times 0 40 20
# title @a title ["",{"text": "回合结束！","bold": true,"color":"red"}]

# execute as @a run attribute @s generic.attack_damage base set -100
# execute as @e[type=chicken] run tp @s ~ -64 ~