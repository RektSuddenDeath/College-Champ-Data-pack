
tag @a[gamemode=adventure,x=-4050,y=140,z=-4085,dx=8,dy=4,dz=1] add pkw_cp3

execute as @a[tag=pkw_cp3] unless score @s pkw_cp matches 3.. at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1
execute as @a[tag=pkw_cp3] unless score @s pkw_cp matches 3.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 1-3 (From the Beneath)","bold": true,"color":"green"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp3] unless score @s pkw_cp matches 3.. run tellraw @s ["",{"text": "["},{"text": "✶","color":"blue"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Course 1 (Spring)","bold": true,"color":"green"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp3] unless entity @a[scores={pkw_cp=3..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 1-3 (From the Beneath)","bold": true,"color":"green"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp3] unless score @s pkw_cp matches 3.. run scoreboard players set @s pkw_cp 3

tag @a remove pkw_cp3