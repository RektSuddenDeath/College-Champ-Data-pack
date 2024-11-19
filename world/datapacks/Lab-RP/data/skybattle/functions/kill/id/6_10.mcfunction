
# Player Specific
###
execute if entity @s[scores={univ_pid=6}] run tellraw @p[advancements={utils:killed/6=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=6}] run execute as @p[advancements={utils:killed/6=true}] run scoreboard players operation @s sba_indvscore += kill sba_stats
execute if entity @s[scores={univ_pid=6}] run execute as @p[advancements={utils:killed/6=true}] run scoreboard players operation @s sba_roundscore += kill sba_stats
execute if entity @s[scores={univ_pid=6}] run execute as @p[advancements={utils:killed/6=true}] run scoreboard players add @s sba_roundkills 1
execute if entity @s[scores={univ_pid=6}] run title @p[advancements={utils:killed/6=true}] times 0 60 10
execute if entity @s[scores={univ_pid=6}] run title @p[advancements={utils:killed/6=true}] title ""
execute if entity @s[scores={univ_pid=6}] run title @p[advancements={utils:killed/6=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=6}]"}]
execute if entity @s[scores={univ_pid=6}] run execute as @p[advancements={utils:killed/6=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=6}] run execute as @a[team=!spec,gamemode=survival] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=6},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/6=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=6},tag=void] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/6=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=6},tag=suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/6=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=6},tag=!void,tag=!suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/6=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=6},tag=void] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/6=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=6},tag=suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/6=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=7}] run tellraw @p[advancements={utils:killed/7=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=7}] run execute as @p[advancements={utils:killed/7=true}] run scoreboard players operation @s sba_indvscore += kill sba_stats
execute if entity @s[scores={univ_pid=7}] run execute as @p[advancements={utils:killed/7=true}] run scoreboard players operation @s sba_roundscore += kill sba_stats
execute if entity @s[scores={univ_pid=7}] run execute as @p[advancements={utils:killed/7=true}] run scoreboard players add @s sba_roundkills 1
execute if entity @s[scores={univ_pid=7}] run title @p[advancements={utils:killed/7=true}] times 0 60 10
execute if entity @s[scores={univ_pid=7}] run title @p[advancements={utils:killed/7=true}] title ""
execute if entity @s[scores={univ_pid=7}] run title @p[advancements={utils:killed/7=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=7}]"}]
execute if entity @s[scores={univ_pid=7}] run execute as @p[advancements={utils:killed/7=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=7}] run execute as @a[team=!spec,gamemode=survival] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=7},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/7=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=7},tag=void] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/7=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=7},tag=suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/7=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=7},tag=!void,tag=!suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/7=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=7},tag=void] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/7=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=7},tag=suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/7=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=8}] run tellraw @p[advancements={utils:killed/8=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=8}] run execute as @p[advancements={utils:killed/8=true}] run scoreboard players operation @s sba_indvscore += kill sba_stats
execute if entity @s[scores={univ_pid=8}] run execute as @p[advancements={utils:killed/8=true}] run scoreboard players operation @s sba_roundscore += kill sba_stats
execute if entity @s[scores={univ_pid=8}] run execute as @p[advancements={utils:killed/8=true}] run scoreboard players add @s sba_roundkills 1
execute if entity @s[scores={univ_pid=8}] run title @p[advancements={utils:killed/8=true}] times 0 60 10
execute if entity @s[scores={univ_pid=8}] run title @p[advancements={utils:killed/8=true}] title ""
execute if entity @s[scores={univ_pid=8}] run title @p[advancements={utils:killed/8=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=8}]"}]
execute if entity @s[scores={univ_pid=8}] run execute as @p[advancements={utils:killed/8=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=8}] run execute as @a[team=!spec,gamemode=survival] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=8},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/8=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=8},tag=void] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/8=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=8},tag=suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/8=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=8},tag=!void,tag=!suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/8=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=8},tag=void] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/8=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=8},tag=suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/8=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=9}] run tellraw @p[advancements={utils:killed/9=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=9}] run execute as @p[advancements={utils:killed/9=true}] run scoreboard players operation @s sba_indvscore += kill sba_stats
execute if entity @s[scores={univ_pid=9}] run execute as @p[advancements={utils:killed/9=true}] run scoreboard players operation @s sba_roundscore += kill sba_stats
execute if entity @s[scores={univ_pid=9}] run execute as @p[advancements={utils:killed/9=true}] run scoreboard players add @s sba_roundkills 1
execute if entity @s[scores={univ_pid=9}] run title @p[advancements={utils:killed/9=true}] times 0 60 10
execute if entity @s[scores={univ_pid=9}] run title @p[advancements={utils:killed/9=true}] title ""
execute if entity @s[scores={univ_pid=9}] run title @p[advancements={utils:killed/9=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=9}]"}]
execute if entity @s[scores={univ_pid=9}] run execute as @p[advancements={utils:killed/9=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=9}] run execute as @a[team=!spec,gamemode=survival] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=9},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/9=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=9},tag=void] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/9=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=9},tag=suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/9=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=9},tag=!void,tag=!suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/9=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=9},tag=void] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/9=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=9},tag=suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/9=true}]"},{"text": "时窒息而死"}]
###
###
execute if entity @s[scores={univ_pid=10}] run tellraw @p[advancements={utils:killed/10=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"text":"你击杀了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=10}] run execute as @p[advancements={utils:killed/10=true}] run scoreboard players operation @s sba_indvscore += kill sba_stats
execute if entity @s[scores={univ_pid=10}] run execute as @p[advancements={utils:killed/10=true}] run scoreboard players operation @s sba_roundscore += kill sba_stats
execute if entity @s[scores={univ_pid=10}] run execute as @p[advancements={utils:killed/10=true}] run scoreboard players add @s sba_roundkills 1
execute if entity @s[scores={univ_pid=10}] run title @p[advancements={utils:killed/10=true}] times 0 60 10
execute if entity @s[scores={univ_pid=10}] run title @p[advancements={utils:killed/10=true}] title ""
execute if entity @s[scores={univ_pid=10}] run title @p[advancements={utils:killed/10=true}] subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={univ_pid=10}]"}]
execute if entity @s[scores={univ_pid=10}] run execute as @p[advancements={utils:killed/10=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=10}] run execute as @a[team=!spec,gamemode=survival] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=10},tag=!void,tag=!suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/10=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=10},tag=void] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/10=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=10},tag=suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/10=true}]"},{"text": "时窒息而死"}]
execute if entity @s[scores={univ_pid=10},tag=!void,tag=!suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "被"},{"selector":"@p[advancements={utils:killed/10=true}]"},{"text": "击杀"}]
execute if entity @s[scores={univ_pid=10},tag=void] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "与"},{"selector":"@p[advancements={utils:killed/10=true}]"},{"text": "不共戴天"}]
execute if entity @s[scores={univ_pid=10},tag=suffocation] run tellraw @a[gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "在逃离"},{"selector":"@p[advancements={utils:killed/10=true}]"},{"text": "时窒息而死"}]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=survival] sba_indvscore += survival sba_stats
scoreboard players operation @a[team=!spec,gamemode=survival] sba_roundscore += survival sba_stats