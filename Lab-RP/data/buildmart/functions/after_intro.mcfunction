
gamemode adventure @a[team=!spec]

function buildmart:blocktitle

execute as @a[team=!spec] run function buildmart:kit

tp @a[team=red] 4979 3 4969 90 0
tp @a[team=blue] 4979 3 5019 90 0
tp @a[team=green] 4979 3 5069 90 0
tp @a[team=yellow] 5029 3 4969 90 0
tp @a[team=cyan] 5029 3 5019 90 0
tp @a[team=pink] 5029 3 5069 90 0
tp @a[team=orange] 5079 3 4969 90 0
tp @a[team=purple] 5079 3 5019 90 0

recipe give @a *
effect give @s night_vision infinite 0 true
kill @e[type=item]
execute as @a at @s run spawnpoint
