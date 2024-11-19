
execute if entity @s[tag=suffocation] run tellraw @a[distance=0..43,team=!spec,gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "卡在墙里窒息而死"}]
execute if entity @s[tag=suffocation] run tellraw @a[distance=0..43,gamemode=!survival] ["",{"selector":"@s"},{"text": "卡在墙里窒息而死"}]
execute if entity @s[tag=void] run tellraw @a[distance=0..43,team=!spec,gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "掉出了这个世界"}]
execute if entity @s[tag=void] run tellraw @a[distance=0..43,gamemode=!survival] ["",{"selector":"@s"},{"text": "掉出了这个世界"}]
execute if entity @s[tag=logout] run tellraw @a[distance=0..43,team=!spec,gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "卡在墙里窒息而死"}]
execute if entity @s[tag=logout] run tellraw @a[distance=0..43,gamemode=!survival] ["",{"selector":"@s"},{"text": "掉线了"}]
execute if entity @s[tag=!logout,tag=!suffocation,tag=!void] run tellraw @a[distance=0..43,team=!spec,gamemode=survival] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "bb_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ",{"selector":"@s"},{"text": "死了"}]
execute if entity @s[tag=!logout,tag=!suffocation,tag=!void] run tellraw @a[distance=0..43,gamemode=!survival] ["",{"selector":"@s"},{"text": "死了"}]
# Universal
execute as @a[team=!spec,gamemode=survival] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
scoreboard players operation @a[team=!spec,gamemode=survival] bb_indvscore += survival bb_stats
scoreboard players operation @a[team=!spec,gamemode=survival] bb_roundscore += survival bb_stats