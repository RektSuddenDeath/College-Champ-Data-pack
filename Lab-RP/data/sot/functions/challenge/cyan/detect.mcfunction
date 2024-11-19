

# Progress actionbar
title @a[team=cyan,tag=sotChallenger] actionbar ["","§e[§r獍§e] ","§6击败房间内全部怪物。 "]

# Reduces time
scoreboard players remove cyan SotChalTime 1


# Calculates Progress
scoreboard players set cyan SotChalProgress 0

execute as @e[type=pillager,tag=sotchallengemob_cyan] at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=zombie,tag=sotchallengemob_cyan] at @s if block ~ ~ ~ lava run kill @s

execute unless entity @e[type=pillager,tag=sotchallengemob_cyan] run scoreboard players add cyan SotChalProgress 1
execute unless entity @e[type=zombie,tag=sotchallengemob_cyan] run scoreboard players add cyan SotChalProgress 1

## Already run out of game time?
execute if score cyan SotTeamTime matches ..0 run scoreboard players set cyan SotChalTime 0
## Fail?
execute if score cyan SotChalTime matches ..0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run function sot:challenge/cyan/fail
## Success?
execute if score cyan SotChalTime matches 1.. if score cyan SotChalProgress matches 2 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run function sot:challenge/cyan/success


## Loop
execute if score cyan SotChalTime matches 1.. run schedule function sot:challenge/cyan/detect 1t
