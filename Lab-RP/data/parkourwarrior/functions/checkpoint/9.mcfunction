tag @a[gamemode=adventure,x=-4044,y=139,z=-4328,dx=6,dy=4,dz=1] add pkw_cp9

execute as @a[tag=pkw_cp9] unless score @s pkw_cp matches 9.. at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1
execute as @a[tag=pkw_cp9] unless score @s pkw_cp matches 9.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 3-3 (The Narrow Edge)","bold": true,"color":"gold"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp9] unless score @s pkw_cp matches 9.. run tellraw @s ["",{"text": "["},{"text": "✶","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Course 3 (Autumn)","bold": true,"color":"gold"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp9] unless entity @a[scores={pkw_cp=9..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 3-3 (The Narrow Edge)","bold": true,"color":"gold"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp9] unless score @s pkw_cp matches 9.. run scoreboard players set @s pkw_cp 9

tag @a remove pkw_cp9