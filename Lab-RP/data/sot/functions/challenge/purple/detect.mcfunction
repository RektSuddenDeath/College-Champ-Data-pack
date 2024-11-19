

# Progress actionbar
title @a[team=purple,tag=sotChallenger] actionbar ["","§e[§r獍§e] ","§6击败房间内全部怪物。 "]

# Reduces time
scoreboard players remove purple SotChalTime 1


# Calculates Progress
scoreboard players set purple SotChalProgress 0

execute as @e[type=pillager,tag=sotchallengemob_purple] at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=zombie,tag=sotchallengemob_purple] at @s if block ~ ~ ~ lava run kill @s

execute unless entity @e[type=pillager,tag=sotchallengemob_purple] run scoreboard players add purple SotChalProgress 1
execute unless entity @e[type=zombie,tag=sotchallengemob_purple] run scoreboard players add purple SotChalProgress 1

## Already run out of game time?
execute if score purple SotTeamTime matches ..0 run scoreboard players set purple SotChalTime 0
## Fail?
execute if score purple SotChalTime matches ..0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=purple] at @s run function sot:challenge/purple/fail
## Success?
execute if score purple SotChalTime matches 1.. if score purple SotChalProgress matches 2 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=purple] at @s run function sot:challenge/purple/success


## Loop
execute if score purple SotChalTime matches 1.. run schedule function sot:challenge/purple/detect 1t
