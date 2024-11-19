
scoreboard players set RoundActive tourney_stats 0

scoreboard players set gameflag tgttos_game 0

gamemode spectator @a
schedule clear tgttos:map/skydive/fall
schedule clear tgttos:map/skydive/noplace

forceload add -6022 -6133 -5958 -5947
schedule function tgttos:map/skydive/cleanup 10s

