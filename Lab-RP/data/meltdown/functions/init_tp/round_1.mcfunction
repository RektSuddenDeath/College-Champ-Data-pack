
scoreboard objectives add temp_meltdown_spawnpoint dummy
scoreboard players set step temp_meltdown_spawnpoint 1
function meltdown:init_tp/sequence_gen

tp @a[team=spec] 60606 270 60591 0 0
gamemode spectator @a[team=spec]

tp @a[scores={temp_meltdown_spawnpoint=1}] 60606.5 234.00 60750.5 -180 0
tp @a[scores={temp_meltdown_spawnpoint=2}] 60726.5 242.00 60750.5 -180 0
tp @a[scores={temp_meltdown_spawnpoint=3}] 60764.5 237.00 60582.5 -270 0
tp @a[scores={temp_meltdown_spawnpoint=4}] 60764.5 239.00 60462.5 -270 0
tp @a[scores={temp_meltdown_spawnpoint=5}] 60606.5 242.00 60433.5 -360 0
tp @a[scores={temp_meltdown_spawnpoint=6}] 60476.5 228.00 60432.5 -360 0
tp @a[scores={temp_meltdown_spawnpoint=7}] 60447.5 238.00 60600.5 -450 0
tp @a[scores={temp_meltdown_spawnpoint=8}] 60447.5 233.00 60702.5 -450 0

gamemode adventure @a[team=!spec]
tag @a remove meltdown_spawn_selected
scoreboard objectives remove temp_meltdown_spawnpoint