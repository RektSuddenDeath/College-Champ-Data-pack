
# Player Specific
###
execute if entity @s[scores={univ_pid=16}] run tellraw @p[advancements={utils:killed/16=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] times 0 60 10
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] title ""
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=16}]"}]
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=16}] run execute as @a[advancements={utils:killed/16=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=16},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=16},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=16},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=16},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=17}] run tellraw @p[advancements={utils:killed/17=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] times 0 60 10
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] title ""
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=17}]"}]
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=17}] run execute as @a[advancements={utils:killed/17=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=17},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=17},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=17},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=17},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=18}] run tellraw @p[advancements={utils:killed/18=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] times 0 60 10
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] title ""
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=18}]"}]
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=18}] run execute as @a[advancements={utils:killed/18=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=18},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=18},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=18},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=18},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=19}] run tellraw @p[advancements={utils:killed/19=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] times 0 60 10
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] title ""
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=19}]"}]
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=19}] run execute as @a[advancements={utils:killed/19=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=19},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=19},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=19},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=19},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=20}] run tellraw @p[advancements={utils:killed/20=true}] ["",{"text": "[§6+"},{"score":{"name": "Kill","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] run scoreboard players operation @s bb_indvscore += Kill bb_stats
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] run scoreboard players operation @s bb_roundscore += Kill bb_stats
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] run scoreboard players add @s bb_roundkills 1
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] times 0 60 10
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] title ""
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=20}]"}]
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=20}] run execute as @a[advancements={utils:killed/20=true}] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=20},tag=!void,tag=!suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=20},tag=!void,tag=!suffocation] at @s run tellraw @a[tag=_transcript] ["§bTranscript >> ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=20},tag=void] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=20},tag=suffocation] at @s run tellraw @a[distance=0..43,team=!spec] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "时窒息而死"}]
###