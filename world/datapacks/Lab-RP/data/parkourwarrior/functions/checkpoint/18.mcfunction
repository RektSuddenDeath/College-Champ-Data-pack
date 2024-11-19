tag @a[gamemode=adventure,x=-3962,y=159,z=-4043,dx=8,dy=5,dz=2] add pkw_cp18

execute as @a[tag=pkw_cp18] unless score @s pkw_cp matches 18.. at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1
execute as @a[tag=pkw_cp18] unless score @s pkw_cp matches 18.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 6-3 (The Sneaky Jumper)","bold": true,"color":"gray"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp18] unless score @s pkw_cp matches 18.. run tellraw @s ["",{"text": "["},{"text": "✶","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Course 6 (Mountain)","bold": true,"color":"gray"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp18] unless score @s pkw_cp matches 18.. run tellraw @a ["",{"text": "["},{"text": "✔","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "完成了","color":"gray","bold": true},{"text": "Course 6 (Mountain)","bold": true,"color":"gray"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp18] unless entity @a[scores={pkw_cp=18..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 6-3 (The Sneaky Jumper)","bold": true,"color":"gray"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp18] unless score @s pkw_cp matches 18.. run scoreboard players set @s pkw_cp 18

tag @a remove pkw_cp18