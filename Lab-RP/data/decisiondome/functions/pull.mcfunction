
scoreboard objectives add pull_x dummy
scoreboard objectives add pull_z dummy
scoreboard objectives add pull_xoffset dummy
scoreboard objectives add pull_zoffset dummy
#### #####
summon area_effect_cloud -10000 105 -9985 {Tags:["green","pull"],Duration:999999}
summon area_effect_cloud -9989 105 -9989 {Tags:["cyan","pull"],Duration:999999}
summon area_effect_cloud -9985 105 -10000 {Tags:["blue","pull"],Duration:999999}
summon area_effect_cloud -9989 105 -10011 {Tags:["orange","pull"],Duration:999999}
summon area_effect_cloud -10000 105 -10015 {Tags:["red","pull"],Duration:999999}
summon area_effect_cloud -10011 105 -10011 {Tags:["purple","pull"],Duration:999999}
summon area_effect_cloud -10015 105 -10000 {Tags:["yellow","pull"],Duration:999999}
summon area_effect_cloud -10011 105 -9989 {Tags:["pink","pull"],Duration:999999}

execute as @a[team=!spec] run execute store result score @s pull_x run data get entity @s Pos[0] 1
execute as @a[team=!spec] run execute store result score @s pull_z run data get entity @s Pos[2] 1

execute as @a[team=!spec] at @s run execute store result score @s pull_xoffset run data get entity @e[type=area_effect_cloud,tag=pull,limit=1,sort=nearest] Pos[0] 1
execute as @a[team=!spec] at @s run execute store result score @s pull_zoffset run data get entity @e[type=area_effect_cloud,tag=pull,limit=1,sort=nearest] Pos[2] 1

execute as @a[team=!spec] run scoreboard players operation @s pull_xoffset -= @s pull_x
execute as @a[team=!spec] run scoreboard players operation @s pull_zoffset -= @s pull_z

# 比如我在  (10000,10000) , AEC 在 (10002,10002) pull_xoffset - pull_x = 2 因此我要往中心的 X Z 轴均TP两格。
execute as @a[team=!spec] at @s if score @s pull_xoffset matches 2..3 run tp @s ~2 ~ ~
execute as @a[team=!spec] at @s if score @s pull_zoffset matches 2..3 run tp @s ~ ~ ~2
execute as @a[team=!spec] at @s if score @s pull_xoffset matches -3..-2 run tp @s ~-2 ~ ~
execute as @a[team=!spec] at @s if score @s pull_zoffset matches -3..-2 run tp @s ~ ~ ~-2

scoreboard objectives remove pull_x
scoreboard objectives remove pull_xoffset
scoreboard objectives remove pull_z
scoreboard objectives remove pull_zoffset
kill @e[type=area_effect_cloud,tag=pull]