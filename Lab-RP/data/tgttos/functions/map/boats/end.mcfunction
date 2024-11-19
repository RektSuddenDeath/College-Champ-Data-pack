
scoreboard players set RoundActive tourney_stats 0

scoreboard players set gameflag tgttos_game 0

gamemode spectator @a
schedule clear tgttos:map/boats/fall

tag @a remove hadBeenOnBoat
tp @e[type=boat,tag=tgttos] -7500 -256 -6500

# function master:timer/nextround/10s
# schedule function tgttos:map/swimtrack/initiate 10s

# stopsound @a voice
# execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
# title @a times 0 40 20
# title @a title ["",{"text": "回合结束！","bold": true,"color":"red"}]

# execute as @a run attribute @s generic.attack_damage base set -100
# execute as @e[type=chicken] run tp @s ~ -64 ~