
# Player Specific
###
execute if entity @s[scores={univ_pid=1}] run tellraw @p[advancements={utils:killed/1=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=1}] run execute as @p[advancements={utils:killed/1=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=1}] run execute as @p[advancements={utils:killed/1=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=1}] run execute as @p[advancements={utils:killed/1=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=1}] run title @p[advancements={utils:killed/1=true}] times 0 60 10
execute if entity @s[scores={univ_pid=1}] run title @p[advancements={utils:killed/1=true}] title ""
execute if entity @s[scores={univ_pid=1}] run title @p[advancements={utils:killed/1=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=1}]"}]
execute if entity @s[scores={univ_pid=1}] run execute as @p[advancements={utils:killed/1=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=1}] run execute as @a[advancements={utils:killed/1=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=1},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/1=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=1},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/1=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=1},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/1=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=1},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/1=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=2}] run tellraw @p[advancements={utils:killed/2=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=2}] run execute as @p[advancements={utils:killed/2=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=2}] run execute as @p[advancements={utils:killed/2=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=2}] run execute as @p[advancements={utils:killed/2=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=2}] run title @p[advancements={utils:killed/2=true}] times 0 60 10
execute if entity @s[scores={univ_pid=2}] run title @p[advancements={utils:killed/2=true}] title ""
execute if entity @s[scores={univ_pid=2}] run title @p[advancements={utils:killed/2=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=2}]"}]
execute if entity @s[scores={univ_pid=2}] run execute as @p[advancements={utils:killed/2=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=2}] run execute as @a[advancements={utils:killed/2=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=2},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/2=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=2},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/2=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=2},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/2=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=2},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/2=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=3}] run tellraw @p[advancements={utils:killed/3=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=3}] run execute as @p[advancements={utils:killed/3=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=3}] run execute as @p[advancements={utils:killed/3=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=3}] run execute as @p[advancements={utils:killed/3=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=3}] run title @p[advancements={utils:killed/3=true}] times 0 60 10
execute if entity @s[scores={univ_pid=3}] run title @p[advancements={utils:killed/3=true}] title ""
execute if entity @s[scores={univ_pid=3}] run title @p[advancements={utils:killed/3=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=3}]"}]
execute if entity @s[scores={univ_pid=3}] run execute as @p[advancements={utils:killed/3=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=3}] run execute as @a[advancements={utils:killed/3=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=3},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/3=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=3},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/3=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=3},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/3=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=3},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/3=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=4}] run tellraw @p[advancements={utils:killed/4=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=4}] run execute as @p[advancements={utils:killed/4=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=4}] run execute as @p[advancements={utils:killed/4=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=4}] run execute as @p[advancements={utils:killed/4=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=4}] run title @p[advancements={utils:killed/4=true}] times 0 60 10
execute if entity @s[scores={univ_pid=4}] run title @p[advancements={utils:killed/4=true}] title ""
execute if entity @s[scores={univ_pid=4}] run title @p[advancements={utils:killed/4=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=4}]"}]
execute if entity @s[scores={univ_pid=4}] run execute as @p[advancements={utils:killed/4=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=4}] run execute as @a[advancements={utils:killed/4=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=4},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/4=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=4},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/4=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=4},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/4=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=4},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/4=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=5}] run tellraw @p[advancements={utils:killed/5=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=5}] run execute as @p[advancements={utils:killed/5=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=5}] run execute as @p[advancements={utils:killed/5=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=5}] run execute as @p[advancements={utils:killed/5=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=5}] run title @p[advancements={utils:killed/5=true}] times 0 60 10
execute if entity @s[scores={univ_pid=5}] run title @p[advancements={utils:killed/5=true}] title ""
execute if entity @s[scores={univ_pid=5}] run title @p[advancements={utils:killed/5=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=5}]"}]
execute if entity @s[scores={univ_pid=5}] run execute as @p[advancements={utils:killed/5=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=5}] run execute as @a[advancements={utils:killed/5=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=5},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/5=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=5},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/5=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=5},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/5=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=5},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/5=true}]"},{"text": "时窒息而死"}]
###
