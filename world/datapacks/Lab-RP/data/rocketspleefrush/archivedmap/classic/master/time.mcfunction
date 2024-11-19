
scoreboard players add TimeElapsed rsr_game 1

execute if score TimeElapsed rsr_game matches 36 run summon area_effect_cloud -8037 181 -7980 {Duration:9999999,CustomNameVisible:1b,Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 36 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 41 run kill @e[type=area_effect_cloud,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 41 run function rocketspleefrush:structure/classic/2
execute if score TimeElapsed rsr_game matches 41 run function rocketspleefrush:disintegrate/classic/1
execute if score TimeElapsed rsr_game matches 41 run tp @e[type=area_effect_cloud,tag=deathanchor] -8000 157 -8000

execute if score TimeElapsed rsr_game matches 76 run summon area_effect_cloud -8009 175 -7942 {Duration:9999999,CustomNameVisible:1b,Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 76 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 81 run kill @e[type=area_effect_cloud,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 81 run function rocketspleefrush:structure/classic/3
execute if score TimeElapsed rsr_game matches 81 run function rocketspleefrush:disintegrate/classic/2
execute if score TimeElapsed rsr_game matches 81 run tp @e[type=area_effect_cloud,tag=deathanchor] -8000 154 -8000

execute if score TimeElapsed rsr_game matches 106 run summon area_effect_cloud -7978 166 -7952 {Duration:9999999,CustomNameVisible:1b,Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 106 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 111 run kill @e[type=area_effect_cloud,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 111 run function rocketspleefrush:structure/classic/4
execute if score TimeElapsed rsr_game matches 111 run function rocketspleefrush:disintegrate/classic/3
execute if score TimeElapsed rsr_game matches 111 run tp @e[type=area_effect_cloud,tag=deathanchor] -8000 147 -8000

execute if score TimeElapsed rsr_game matches 110 run execute as @a at @s run playsound updraftremovedsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 110 run title @a times 10 40 10
execute if score TimeElapsed rsr_game matches 110 run title @a title ""
execute if score TimeElapsed rsr_game matches 110 run title @a subtitle "§6上浮道具将在10秒后移除。"
execute if score TimeElapsed rsr_game matches 110 run execute as @a at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1000000 2

execute if score TimeElapsed rsr_game matches 120 run clear @a ender_pearl
execute if score TimeElapsed rsr_game matches 120 run tellraw @a "§c(§r鼱§c) §c§l上浮道具已移除！"

execute if score TimeElapsed rsr_game matches 136 run summon area_effect_cloud -7954 165 -7979 {Duration:9999999,CustomNameVisible:1b,Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 136 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 141 run kill @e[type=area_effect_cloud,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 141 run function rocketspleefrush:structure/classic/5
execute if score TimeElapsed rsr_game matches 141 run function rocketspleefrush:disintegrate/classic/4
execute if score TimeElapsed rsr_game matches 141 run tp @e[type=area_effect_cloud,tag=deathanchor] -8000 141 -8000

execute if score TimeElapsed rsr_game matches 156 run summon area_effect_cloud -7945 159 -7954 {Duration:9999999,CustomNameVisible:1b,Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 156 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 161 run kill @e[type=area_effect_cloud,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 161 run function rocketspleefrush:structure/classic/6
execute if score TimeElapsed rsr_game matches 161 run function rocketspleefrush:disintegrate/classic/5
execute if score TimeElapsed rsr_game matches 161 run tp @e[type=area_effect_cloud,tag=deathanchor] -8000 136 -8000

execute if score TimeElapsed rsr_game matches 176 run summon area_effect_cloud -7928 151 -7971 {Duration:9999999,CustomNameVisible:1b,Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 176 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 181 run kill @e[type=area_effect_cloud,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 181 run function rocketspleefrush:structure/classic/7
execute if score TimeElapsed rsr_game matches 181 run function rocketspleefrush:disintegrate/classic/6
execute if score TimeElapsed rsr_game matches 181 run tp @e[type=area_effect_cloud,tag=deathanchor] -8000 130 -8000

execute if score TimeElapsed rsr_game matches 196 run summon area_effect_cloud -7932 148 -7995 {Duration:9999999,CustomNameVisible:1b,Tags:["rsr","nextplatform"]}
execute if score TimeElapsed rsr_game matches 196 run execute as @a at @s run playsound nextplatformsfx record @s ~ ~ ~ 1 1
execute if score TimeElapsed rsr_game matches 201 run kill @e[type=area_effect_cloud,tag=nextplatform]
execute if score TimeElapsed rsr_game matches 201 run function rocketspleefrush:structure/classic/8
execute if score TimeElapsed rsr_game matches 201 run function rocketspleefrush:disintegrate/classic/7
execute if score TimeElapsed rsr_game matches 201 run tp @e[type=area_effect_cloud,tag=deathanchor] -8000 126 -8000

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:map/classic/time 1s