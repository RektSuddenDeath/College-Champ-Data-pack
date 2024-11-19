

# Progress actionbar
title @a[team=yellow,tag=sotChallenger] actionbar ["","§e[§r獍§e] ","§6击败房间内全部怪物。 "]

# Reduces time
scoreboard players remove yellow SotChalTime 1


# Calculates Progress
scoreboard players set yellow SotChalProgress 0

execute as @e[type=pillager,tag=sotchallengemob_yellow] at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=zombie,tag=sotchallengemob_yellow] at @s if block ~ ~ ~ lava run kill @s

execute unless entity @e[type=pillager,tag=sotchallengemob_yellow] run scoreboard players add yellow SotChalProgress 1
execute unless entity @e[type=zombie,tag=sotchallengemob_yellow] run scoreboard players add yellow SotChalProgress 1

## Already run out of game time?
execute if score yellow SotTeamTime matches ..0 run scoreboard players set yellow SotChalTime 0
## Fail?
execute if score yellow SotChalTime matches ..0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=yellow] at @s run function sot:challenge/yellow/fail
## Success?
execute if score yellow SotChalTime matches 1.. if score yellow SotChalProgress matches 2 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=yellow] at @s run function sot:challenge/yellow/success


## Loop
execute if score yellow SotChalTime matches 1.. run schedule function sot:challenge/yellow/detect 1t
