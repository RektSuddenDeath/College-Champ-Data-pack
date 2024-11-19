

# Progress actionbar
title @a[team=blue,tag=sotChallenger] actionbar ["","§e[§r獍§e] ","§6击败房间内全部怪物。 "]

# Reduces time
scoreboard players remove blue SotChalTime 1


# Calculates Progress
scoreboard players set blue SotChalProgress 0

execute as @e[type=pillager,tag=sotchallengemob_blue] at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=zombie,tag=sotchallengemob_blue] at @s if block ~ ~ ~ lava run kill @s

execute unless entity @e[type=pillager,tag=sotchallengemob_blue] run scoreboard players add blue SotChalProgress 1
execute unless entity @e[type=zombie,tag=sotchallengemob_blue] run scoreboard players add blue SotChalProgress 1

## Already run out of game time?
execute if score blue SotTeamTime matches ..0 run scoreboard players set blue SotChalTime 0
## Fail?
execute if score blue SotChalTime matches ..0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=blue] at @s run function sot:challenge/blue/fail
## Success?
execute if score blue SotChalTime matches 1.. if score blue SotChalProgress matches 2 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=blue] at @s run function sot:challenge/blue/success


## Loop
execute if score blue SotChalTime matches 1.. run schedule function sot:challenge/blue/detect 1t
