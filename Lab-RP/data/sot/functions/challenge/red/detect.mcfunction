

# Progress actionbar
title @a[team=red,tag=sotChallenger] actionbar ["","§e[§r獍§e] ","§6击败房间内全部怪物。 "]

# Reduces time
scoreboard players remove red SotChalTime 1


# Calculates Progress
scoreboard players set red SotChalProgress 0

execute as @e[type=pillager,tag=sotchallengemob_red] at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=zombie,tag=sotchallengemob_red] at @s if block ~ ~ ~ lava run kill @s

execute unless entity @e[type=pillager,tag=sotchallengemob_red] run scoreboard players add red SotChalProgress 1
execute unless entity @e[type=zombie,tag=sotchallengemob_red] run scoreboard players add red SotChalProgress 1

## Already run out of game time?
execute if score red SotTeamTime matches ..0 run scoreboard players set red SotChalTime 0
## Fail?
execute if score red SotChalTime matches ..0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=red] at @s run function sot:challenge/red/fail
## Success?
execute if score red SotChalTime matches 1.. if score red SotChalProgress matches 2 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=red] at @s run function sot:challenge/red/success


## Loop
execute if score red SotChalTime matches 1.. run schedule function sot:challenge/red/detect 1t
