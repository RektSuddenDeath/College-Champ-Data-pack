
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left] run scoreboard players operation @s bm_plotNo = @s bm_leftplotNo
execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle] run scoreboard players operation @s bm_plotNo = @s bm_midplotNo

## PLOT NO 是建筑的序列号

# NORMAL

execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_1,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/1
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_2,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/2
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_3,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/3
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_4,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/4
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_5,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/5
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_6,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/6
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_7,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/7
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_8,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/8
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_9,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/9

execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_10,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/10
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_11,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/11
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_12,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/12
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_13,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/13
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_14,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/14
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_15,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/15
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_16,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/16
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_17,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/17
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_18,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/18
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_19,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/19

execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_20,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/20
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_21,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/21
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_22,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/22
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_23,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/23
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_24,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/24
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_25,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/25
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_26,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/26
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_27,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/27
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_28,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/28
execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_29,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/29

execute as @e[type=marker,tag=bm_buildzone,tag=!zone_right] if score @e[type=marker,tag=normal_30,limit=1] bm_normalbuildseq = @s bm_plotNo at @s run execute store result score @s bm_checkstate run function buildmart:verify/normal/30

execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle] if score @s bm_midplotNo matches 15.. run scoreboard players set @s bm_checkstate 0
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left] if score @s bm_leftplotNo matches 15.. run scoreboard players set @s bm_checkstate 0

# PASS IT TO COMPLETION STATUS
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left,tag=red] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/left/red
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left,tag=blue] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/left/blue
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left,tag=green] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/left/green
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left,tag=yellow] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/left/yellow
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left,tag=cyan] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/left/cyan
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left,tag=pink] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/left/pink
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left,tag=orange] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/left/orange
execute as @e[type=marker,tag=bm_buildzone,tag=zone_left,tag=purple] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/left/purple

execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle,tag=red] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/middle/red
execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle,tag=blue] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/middle/blue
execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle,tag=green] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/middle/green
execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle,tag=yellow] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/middle/yellow
execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle,tag=cyan] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/middle/cyan
execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle,tag=pink] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/middle/pink
execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle,tag=orange] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/middle/orange
execute as @e[type=marker,tag=bm_buildzone,tag=zone_middle,tag=purple] at @s if score @s bm_checkstate matches 1 run function buildmart:complete/middle/purple
