
# Player Specific
###
execute if entity @s[scores={univ_pid=36}] run tellraw @p[advancements={utils:killed/36=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=36}] run title @p[advancements={utils:killed/36=true}] times 0 60 10
execute if entity @s[scores={univ_pid=36}] run title @p[advancements={utils:killed/36=true}] title ""
execute if entity @s[scores={univ_pid=36}] run title @p[advancements={utils:killed/36=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=36}]"}]
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=36}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=36},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/36=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=36},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/36=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=36},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/36=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=36},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/36=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=36},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/36=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=36},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/36=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=37}] run tellraw @p[advancements={utils:killed/37=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=37}] run title @p[advancements={utils:killed/37=true}] times 0 60 10
execute if entity @s[scores={univ_pid=37}] run title @p[advancements={utils:killed/37=true}] title ""
execute if entity @s[scores={univ_pid=37}] run title @p[advancements={utils:killed/37=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=37}]"}]
execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=37}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=37},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/37=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=37},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/37=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=37},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/37=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=37},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/37=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=37},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/37=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=37},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/37=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=38}] run tellraw @p[advancements={utils:killed/38=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=38}] run title @p[advancements={utils:killed/38=true}] times 0 60 10
execute if entity @s[scores={univ_pid=38}] run title @p[advancements={utils:killed/38=true}] title ""
execute if entity @s[scores={univ_pid=38}] run title @p[advancements={utils:killed/38=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=38}]"}]
execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=38}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=38},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/38=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=38},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/38=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=38},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/38=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=38},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/38=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=38},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/38=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=38},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/38=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=39}] run tellraw @p[advancements={utils:killed/39=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=39}] run title @p[advancements={utils:killed/39=true}] times 0 60 10
execute if entity @s[scores={univ_pid=39}] run title @p[advancements={utils:killed/39=true}] title ""
execute if entity @s[scores={univ_pid=39}] run title @p[advancements={utils:killed/39=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=39}]"}]
execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=39}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=39},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/39=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=39},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/39=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=39},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/39=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=39},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/39=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=39},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/39=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=39},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/39=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=40}] run tellraw @p[advancements={utils:killed/40=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=40}] run title @p[advancements={utils:killed/40=true}] times 0 60 10
execute if entity @s[scores={univ_pid=40}] run title @p[advancements={utils:killed/40=true}] title ""
execute if entity @s[scores={univ_pid=40}] run title @p[advancements={utils:killed/40=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=40}]"}]
execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=40}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=40},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/40=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=40},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/40=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=40},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/40=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=40},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/40=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=40},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/40=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=40},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/40=true}]"},{"text": "时窒息而死"}]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] sg_indvscore += survival sg_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] sg_roundscore += survival sg_stats