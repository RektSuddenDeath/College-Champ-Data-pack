

# Progress actionbar
title @a[team=pink,tag=sotChallenger] actionbar ["","§e[§r獍§e] ","§6击败房间内全部怪物。 "]

# Reduces time
scoreboard players remove pink SotChalTime 1


# Calculates Progress
scoreboard players set pink SotChalProgress 0

execute as @e[type=pillager,tag=sotchallengemob_pink] at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=zombie,tag=sotchallengemob_pink] at @s if block ~ ~ ~ lava run kill @s

execute unless entity @e[type=pillager,tag=sotchallengemob_pink] run scoreboard players add pink SotChalProgress 1
execute unless entity @e[type=zombie,tag=sotchallengemob_pink] run scoreboard players add pink SotChalProgress 1

## Already run out of game time?
execute if score pink SotTeamTime matches ..0 run scoreboard players set pink SotChalTime 0
## Fail?
execute if score pink SotChalTime matches ..0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=pink] at @s run function sot:challenge/pink/fail
## Success?
execute if score pink SotChalTime matches 1.. if score pink SotChalProgress matches 2 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=pink] at @s run function sot:challenge/pink/success


## Loop
execute if score pink SotChalTime matches 1.. run schedule function sot:challenge/pink/detect 1t
