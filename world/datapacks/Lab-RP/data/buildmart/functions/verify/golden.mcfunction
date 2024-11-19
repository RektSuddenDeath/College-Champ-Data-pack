
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] run scoreboard players operation @s bm_plotNo = @s bm_rightplotNo

## PLOT NO 是建筑的序列号


# GOLDEN
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_1,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/1
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_2,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/2
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_3,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/3
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_4,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/4
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_5,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/5
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_6,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/6
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_7,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/7
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_8,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/8
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_9,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/9

execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @e[type=marker,tag=golden_10,limit=1] bm_goldenbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/golden/10

execute as @e[type=marker,tag=bm_buildzone,tag=zone_right] if score @s bm_rightplotNo matches 8.. run scoreboard players set @s bm_checkstate 0

# PASS IT TO COMPLETION STATUS

execute as @e[type=marker,tag=bm_buildzone,tag=zone_right,tag=red] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/right/red
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right,tag=blue] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/right/blue
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right,tag=green] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/right/green
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right,tag=yellow] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/right/yellow
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right,tag=cyan] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/right/cyan
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right,tag=pink] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/right/pink
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right,tag=orange] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/right/orange
execute as @e[type=marker,tag=bm_buildzone,tag=zone_right,tag=purple] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/right/purple