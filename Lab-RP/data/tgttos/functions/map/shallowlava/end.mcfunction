
scoreboard players set RoundActive tourney_stats 0

scoreboard players set gameflag tgttos_game 0

gamemode spectator @a
schedule clear tgttos:map/shallowlava/fall
schedule clear tgttos:map/shallowlava/noplace

forceload add -7065 -6522 -6923 -6458
schedule function tgttos:map/shallowlava/cleanup 10s

