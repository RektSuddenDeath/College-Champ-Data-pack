tag @a[gamemode=adventure,x=-3969,y=146,z=-4166,dx=5,dy=4,dz=3] add pkw_cp15

execute as @a[tag=pkw_cp15] unless score @s pkw_cp matches 15.. at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1
execute as @a[tag=pkw_cp15] unless score @s pkw_cp matches 15.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 5-3 (The Get-Around Issue)","bold": true,"color":"aqua"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp15] unless score @s pkw_cp matches 15.. run tellraw @s ["",{"text": "["},{"text": "✶","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Course 5 (Ocean)","bold": true,"color":"aqua"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp15] unless score @s pkw_cp matches 15.. run tellraw @a ["",{"text": "["},{"text": "✔","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "完成了","color":"gray","bold": true},{"text": "Course 5 (Ocean)","bold": true,"color":"aqua"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp15] unless entity @a[scores={pkw_cp=15..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 5-3 (The Get-Around Issue)","bold": true,"color":"aqua"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp15] unless score @s pkw_cp matches 15.. run scoreboard players set @s pkw_cp 15

tag @a remove pkw_cp15