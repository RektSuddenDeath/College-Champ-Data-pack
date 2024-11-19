
# Player Specific
###
execute if entity @s[scores={univ_pid=26}] run tellraw @p[advancements={utils:killed/26=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=26}] run title @p[advancements={utils:killed/26=true}] times 0 60 10
execute if entity @s[scores={univ_pid=26}] run title @p[advancements={utils:killed/26=true}] title ""
execute if entity @s[scores={univ_pid=26}] run title @p[advancements={utils:killed/26=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=26}]"}]
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=26}] run execute as @a[advancements={utils:killed/26=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=26},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/26=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=26},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/26=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=26},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/26=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=26},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/26=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=27}] run tellraw @p[advancements={utils:killed/27=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=27}] run title @p[advancements={utils:killed/27=true}] times 0 60 10
execute if entity @s[scores={univ_pid=27}] run title @p[advancements={utils:killed/27=true}] title ""
execute if entity @s[scores={univ_pid=27}] run title @p[advancements={utils:killed/27=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=27}]"}]
execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=27}] run execute as @a[advancements={utils:killed/27=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=27},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/27=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=27},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/27=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=27},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/27=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=27},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/27=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=28}] run tellraw @p[advancements={utils:killed/28=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=28}] run title @p[advancements={utils:killed/28=true}] times 0 60 10
execute if entity @s[scores={univ_pid=28}] run title @p[advancements={utils:killed/28=true}] title ""
execute if entity @s[scores={univ_pid=28}] run title @p[advancements={utils:killed/28=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=28}]"}]
execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=28}] run execute as @a[advancements={utils:killed/28=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=28},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/28=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=28},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/28=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=28},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/28=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=28},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/28=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=29}] run tellraw @p[advancements={utils:killed/29=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=29}] run title @p[advancements={utils:killed/29=true}] times 0 60 10
execute if entity @s[scores={univ_pid=29}] run title @p[advancements={utils:killed/29=true}] title ""
execute if entity @s[scores={univ_pid=29}] run title @p[advancements={utils:killed/29=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=29}]"}]
execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=29}] run execute as @a[advancements={utils:killed/29=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=29},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/29=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=29},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/29=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=29},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/29=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=29},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/29=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=30}] run tellraw @p[advancements={utils:killed/30=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=30}] run title @p[advancements={utils:killed/30=true}] times 0 60 10
execute if entity @s[scores={univ_pid=30}] run title @p[advancements={utils:killed/30=true}] title ""
execute if entity @s[scores={univ_pid=30}] run title @p[advancements={utils:killed/30=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=30}]"}]
execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=30}] run execute as @a[advancements={utils:killed/30=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=30},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/30=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=30},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/30=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=30},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/30=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=30},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/30=true}]"},{"text": "时窒息而死"}]
###