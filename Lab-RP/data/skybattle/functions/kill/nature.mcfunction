
execute if entity @s[tag=suffocation] run tellraw @a[team=!spec,gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "卡在墙里窒息而死"}]
execute if entity @s[tag=suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "卡在墙里窒息而死"}]
execute if entity @s[tag=void,tag=!suffocation] run tellraw @a[team=!spec,gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "掉出了这个世界"}]
execute if entity @s[tag=void,tag=!suffocation] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "掉出了这个世界"}]
execute if entity @s[tag=logout] run tellraw @a[team=!spec,gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "卡在墙里窒息而死"}]
execute if entity @s[tag=logout] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "掉线了"}]
execute if entity @s[tag=!logout,tag=!suffocation,tag=!void] run tellraw @a[team=!spec,gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "sba_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "死了"}]
execute if entity @s[tag=!logout,tag=!suffocation,tag=!void] run tellraw @a[gamemode=!survival] ["",{"selector":"@s"},{"text": "死了"}]
# Universal
execute as @a[team=!spec,gamemode=survival] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
scoreboard players operation @a[team=!spec,gamemode=survival] sba_indvscore += survival sba_stats
scoreboard players operation @a[team=!spec,gamemode=survival] sba_roundscore += survival sba_stats