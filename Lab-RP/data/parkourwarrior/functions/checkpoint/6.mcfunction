tag @a[gamemode=adventure,x=-4047,y=134,z=-4202,dx=10,dy=5,dz=1] add pkw_cp6

execute as @a[tag=pkw_cp6] unless score @s pkw_cp matches 6.. at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1
execute as @a[tag=pkw_cp6] unless score @s pkw_cp matches 6.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 2-3 (Triple Bounce)","bold": true,"color":"yellow"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp6] unless score @s pkw_cp matches 6.. run tellraw @s ["",{"text": "["},{"text": "✶","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Course 2 (Summer)","bold": true,"color":"yellow"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp6] unless entity @a[scores={pkw_cp=6..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 2-3 (Triple Bounce)","bold": true,"color":"yellow"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp6] unless score @s pkw_cp matches 6.. run scoreboard players set @s pkw_cp 6

tag @a remove pkw_cp6