
# Player Specific
###
execute if entity @s[scores={univ_pid=11}] run tellraw @p[advancements={utils:killed/11=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=11}] run execute as @p[advancements={utils:killed/11=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=11}] run execute as @p[advancements={utils:killed/11=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=11}] run execute as @p[advancements={utils:killed/11=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=11}] run title @p[advancements={utils:killed/11=true}] times 0 60 10
execute if entity @s[scores={univ_pid=11}] run title @p[advancements={utils:killed/11=true}] title ""
execute if entity @s[scores={univ_pid=11}] run title @p[advancements={utils:killed/11=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=11}]"}]
execute if entity @s[scores={univ_pid=11}] run execute as @p[advancements={utils:killed/11=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=11}] run execute as @a[advancements={utils:killed/11=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=11},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/11=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=11},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/11=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=11},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/11=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=11},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/11=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=12}] run tellraw @p[advancements={utils:killed/12=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=12}] run execute as @p[advancements={utils:killed/12=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=12}] run execute as @p[advancements={utils:killed/12=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=12}] run execute as @p[advancements={utils:killed/12=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=12}] run title @p[advancements={utils:killed/12=true}] times 0 60 10
execute if entity @s[scores={univ_pid=12}] run title @p[advancements={utils:killed/12=true}] title ""
execute if entity @s[scores={univ_pid=12}] run title @p[advancements={utils:killed/12=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=12}]"}]
execute if entity @s[scores={univ_pid=12}] run execute as @p[advancements={utils:killed/12=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=12}] run execute as @a[advancements={utils:killed/12=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=12},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/12=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=12},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/12=true}]"},{"text": "击杀"}]

execute if entity @s[scores={univ_pid=12},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/12=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=12},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/12=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=13}] run tellraw @p[advancements={utils:killed/13=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=13}] run execute as @p[advancements={utils:killed/13=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=13}] run execute as @p[advancements={utils:killed/13=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=13}] run execute as @p[advancements={utils:killed/13=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=13}] run title @p[advancements={utils:killed/13=true}] times 0 60 10
execute if entity @s[scores={univ_pid=13}] run title @p[advancements={utils:killed/13=true}] title ""
execute if entity @s[scores={univ_pid=13}] run title @p[advancements={utils:killed/13=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=13}]"}]
execute if entity @s[scores={univ_pid=13}] run execute as @p[advancements={utils:killed/13=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=13}] run execute as @a[advancements={utils:killed/13=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=13},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/13=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=13},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/13=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=13},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/13=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=13},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/13=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=14}] run tellraw @p[advancements={utils:killed/14=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=14}] run execute as @p[advancements={utils:killed/14=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=14}] run execute as @p[advancements={utils:killed/14=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=14}] run execute as @p[advancements={utils:killed/14=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=14}] run title @p[advancements={utils:killed/14=true}] times 0 60 10
execute if entity @s[scores={univ_pid=14}] run title @p[advancements={utils:killed/14=true}] title ""
execute if entity @s[scores={univ_pid=14}] run title @p[advancements={utils:killed/14=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=14}]"}]
execute if entity @s[scores={univ_pid=14}] run execute as @p[advancements={utils:killed/14=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=14}] run execute as @a[advancements={utils:killed/14=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=14},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/14=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=14},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/14=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=14},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/14=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=14},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/14=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=15}] run tellraw @p[advancements={utils:killed/15=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=15}] run execute as @p[advancements={utils:killed/15=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=15}] run execute as @p[advancements={utils:killed/15=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=15}] run execute as @p[advancements={utils:killed/15=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=15}] run title @p[advancements={utils:killed/15=true}] times 0 60 10
execute if entity @s[scores={univ_pid=15}] run title @p[advancements={utils:killed/15=true}] title ""
execute if entity @s[scores={univ_pid=15}] run title @p[advancements={utils:killed/15=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=15}]"}]
execute if entity @s[scores={univ_pid=15}] run execute as @p[advancements={utils:killed/15=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=15}] run execute as @a[advancements={utils:killed/15=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=15},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/15=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=15},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/15=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=15},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/15=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=15},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/15=true}]"},{"text": "时窒息而死"}]
###