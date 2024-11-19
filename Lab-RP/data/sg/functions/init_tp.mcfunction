
execute in sg:sjtu run forceload add 592 1364 617 1390
execute in sg:sjtu run worldborder center 605.5 1377.5
execute in sg:sjtu run worldborder set 100000
execute in sg:sjtu run worldborder damage amount 0.33

execute in sg:sjtu run tp @a[team=red] 600.69 9.00 1366.67 -23.69 0
execute in sg:sjtu run tp @a[team=blue] 594.64 9.00 1373.03 -68.88 0
execute in sg:sjtu run tp @a[team=green] 595.07 9.00 1382.08 -111.65 0
execute in sg:sjtu run tp @a[team=yellow] 600.88 9.00 1388.36 -157.15 0
execute in sg:sjtu run tp @a[team=cyan] 610.01 9.00 1388.07 -201.38 0
execute in sg:sjtu run tp @a[team=pink] 615.98 9.00 1381.79 -248.34 0
execute in sg:sjtu run tp @a[team=orange] 616.14 9.00 1373.04 -293.34 0
execute in sg:sjtu run tp @a[team=purple] 610.22 9.00 1366.47 -337.95 0

execute in sg:sjtu run tp @a[team=spec] 623.64 15.36 1378.70 -265.29 22.5

execute as @a at @s run spawnpoint

kill @e[type=marker,tag=sgcenter]
execute in sg:sjtu run summon marker 605.5 10 1377.5 {Tags:["sgmap","sgcenter"]}
execute in sg:sjtu as @e[type=marker,tag=sgcenter] at @s run function sg:createbarrier
function sg:transfer_detect