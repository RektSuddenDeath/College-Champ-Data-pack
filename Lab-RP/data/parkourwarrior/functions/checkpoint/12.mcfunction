tag @a[gamemode=adventure,x=-3972,y=140,z=-4274,dx=6,dy=4,dz=1] add pkw_cp12

execute as @a[tag=pkw_cp12] unless score @s pkw_cp matches 12.. at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1
execute as @a[tag=pkw_cp12] unless score @s pkw_cp matches 12.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 4-3 (The Holey Moley)","bold": true,"color":"blue"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp12] unless score @s pkw_cp matches 12.. run tellraw @s ["",{"text": "["},{"text": "✶","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Course 4 (Winter)","bold": true,"color":"blue"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp12] unless score @s pkw_cp matches 12.. run tellraw @a ["",{"text": "["},{"text": "✔","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "完成了","color":"gray","bold": true},{"text": "Course 4 (Winter)","bold": true,"color":"blue"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp12] unless entity @a[scores={pkw_cp=12..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 4-3 (The Holey Moley)","bold": true,"color":"blue"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp12] unless score @s pkw_cp matches 12.. run scoreboard players set @s pkw_cp 12

tag @a remove pkw_cp12