

# Progress actionbar
title @a[team=green,tag=sotChallenger] actionbar ["","§e[§r獍§e] ","§6击败房间内全部怪物。 "]

# Reduces time
scoreboard players remove green SotChalTime 1


# Calculates Progress
scoreboard players set green SotChalProgress 0

execute as @e[type=pillager,tag=sotchallengemob_green] at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=zombie,tag=sotchallengemob_green] at @s if block ~ ~ ~ lava run kill @s

execute unless entity @e[type=pillager,tag=sotchallengemob_green] run scoreboard players add green SotChalProgress 1
execute unless entity @e[type=zombie,tag=sotchallengemob_green] run scoreboard players add green SotChalProgress 1

## Already run out of game time?
execute if score green SotTeamTime matches ..0 run scoreboard players set green SotChalTime 0
## Fail?
execute if score green SotChalTime matches ..0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=green] at @s run function sot:challenge/green/fail
## Success?
execute if score green SotChalTime matches 1.. if score green SotChalProgress matches 2 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=green] at @s run function sot:challenge/green/success


## Loop
execute if score green SotChalTime matches 1.. run schedule function sot:challenge/green/detect 1t
