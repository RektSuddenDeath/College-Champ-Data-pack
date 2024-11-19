
# Player Specific
###
execute if entity @s[scores={univ_pid=21}] run tellraw @p[advancements={utils:killed/21=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=21}] run execute as @p[advancements={utils:killed/21=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=21}] run execute as @p[advancements={utils:killed/21=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=21}] run execute as @p[advancements={utils:killed/21=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=21}] run title @p[advancements={utils:killed/21=true}] times 0 60 10
execute if entity @s[scores={univ_pid=21}] run title @p[advancements={utils:killed/21=true}] title ""
execute if entity @s[scores={univ_pid=21}] run title @p[advancements={utils:killed/21=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=21}]"}]
execute if entity @s[scores={univ_pid=21}] run execute as @p[advancements={utils:killed/21=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=21}] run execute as @a[advancements={utils:killed/21=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=21},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/21=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=21},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/21=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=21},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/21=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=21},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/21=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=22}] run tellraw @p[advancements={utils:killed/22=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=22}] run execute as @p[advancements={utils:killed/22=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=22}] run execute as @p[advancements={utils:killed/22=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=22}] run execute as @p[advancements={utils:killed/22=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=22}] run title @p[advancements={utils:killed/22=true}] times 0 60 10
execute if entity @s[scores={univ_pid=22}] run title @p[advancements={utils:killed/22=true}] title ""
execute if entity @s[scores={univ_pid=22}] run title @p[advancements={utils:killed/22=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=22}]"}]
execute if entity @s[scores={univ_pid=22}] run execute as @p[advancements={utils:killed/22=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=22}] run execute as @a[advancements={utils:killed/22=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=22},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/22=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=22},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/22=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=22},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/22=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=22},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/22=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=23}] run tellraw @p[advancements={utils:killed/23=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=23}] run execute as @p[advancements={utils:killed/23=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=23}] run execute as @p[advancements={utils:killed/23=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=23}] run execute as @p[advancements={utils:killed/23=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=23}] run title @p[advancements={utils:killed/23=true}] times 0 60 10
execute if entity @s[scores={univ_pid=23}] run title @p[advancements={utils:killed/23=true}] title ""
execute if entity @s[scores={univ_pid=23}] run title @p[advancements={utils:killed/23=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=23}]"}]
execute if entity @s[scores={univ_pid=23}] run execute as @p[advancements={utils:killed/23=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=23}] run execute as @a[advancements={utils:killed/23=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=23},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/23=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=23},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/23=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=23},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/23=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=23},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/23=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=24}] run tellraw @p[advancements={utils:killed/24=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=24}] run execute as @p[advancements={utils:killed/24=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=24}] run execute as @p[advancements={utils:killed/24=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=24}] run execute as @p[advancements={utils:killed/24=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=24}] run title @p[advancements={utils:killed/24=true}] times 0 60 10
execute if entity @s[scores={univ_pid=24}] run title @p[advancements={utils:killed/24=true}] title ""
execute if entity @s[scores={univ_pid=24}] run title @p[advancements={utils:killed/24=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=24}]"}]
execute if entity @s[scores={univ_pid=24}] run execute as @p[advancements={utils:killed/24=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=24}] run execute as @a[advancements={utils:killed/24=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=24},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/24=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=24},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/24=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=24},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/24=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=24},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/24=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=25}] run tellraw @p[advancements={utils:killed/25=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=25}] run execute as @p[advancements={utils:killed/25=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=25}] run execute as @p[advancements={utils:killed/25=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=25}] run execute as @p[advancements={utils:killed/25=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=25}] run title @p[advancements={utils:killed/25=true}] times 0 60 10
execute if entity @s[scores={univ_pid=25}] run title @p[advancements={utils:killed/25=true}] title ""
execute if entity @s[scores={univ_pid=25}] run title @p[advancements={utils:killed/25=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=25}]"}]
execute if entity @s[scores={univ_pid=25}] run execute as @p[advancements={utils:killed/25=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=25}] run execute as @a[advancements={utils:killed/25=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=25},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/25=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=25},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/25=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=25},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/25=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=25},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/25=true}]"},{"text": "时窒息而死"}]
###