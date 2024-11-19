
# Player Specific
###
execute if entity @s[scores={univ_pid=16}] run tellraw @p[advancements={utils:killed/16=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] times 0 60 10
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] title ""
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=16}]"}]
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=16}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=16},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=16},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=16},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=16},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=16},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=16},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/16=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=17}] run tellraw @p[advancements={utils:killed/17=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] times 0 60 10
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] title ""
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=17}]"}]
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=17}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=17},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=17},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=17},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=17},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=17},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=17},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/17=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=18}] run tellraw @p[advancements={utils:killed/18=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] times 0 60 10
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] title ""
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=18}]"}]
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=18}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=18},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=18},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=18},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=18},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=18},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=18},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/18=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=19}] run tellraw @p[advancements={utils:killed/19=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] times 0 60 10
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] title ""
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=19}]"}]
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=19}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=19},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=19},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=19},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=19},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=19},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=19},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/19=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=20}] run tellraw @p[advancements={utils:killed/20=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] run scoreboard players operation @s sg_indvscore += kill sg_stats
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] run scoreboard players operation @s sg_roundscore += kill sg_stats
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] run scoreboard players add @s sg_roundkills 1
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] times 0 60 10
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] title ""
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=20}]"}]
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=20}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=20},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=20},tag=void] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=20},tag=suffocation] run tellraw @a[gamemode=!adventure] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=20},tag=!void,tag=!suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=20},tag=void] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=20},tag=suffocation] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sg_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/20=true}]"},{"text": "时窒息而死"}]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] sg_indvscore += survival sg_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] sg_roundscore += survival sg_stats