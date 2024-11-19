

# Progress actionbar
title @a[team=orange,tag=sotChallenger] actionbar ["","§e[§r獍§e] ","§6击败房间内全部怪物。 "]

# Reduces time
scoreboard players remove orange SotChalTime 1


# Calculates Progress
scoreboard players set orange SotChalProgress 0

execute as @e[type=pillager,tag=sotchallengemob_orange] at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=zombie,tag=sotchallengemob_orange] at @s if block ~ ~ ~ lava run kill @s

execute unless entity @e[type=pillager,tag=sotchallengemob_orange] run scoreboard players add orange SotChalProgress 1
execute unless entity @e[type=zombie,tag=sotchallengemob_orange] run scoreboard players add orange SotChalProgress 1

## Already run out of game time?
execute if score orange SotTeamTime matches ..0 run scoreboard players set orange SotChalTime 0
## Fail?
execute if score orange SotChalTime matches ..0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=orange] at @s run function sot:challenge/orange/fail
## Success?
execute if score orange SotChalTime matches 1.. if score orange SotChalProgress matches 2 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=orange] at @s run function sot:challenge/orange/success


## Loop
execute if score orange SotChalTime matches 1.. run schedule function sot:challenge/orange/detect 1t
