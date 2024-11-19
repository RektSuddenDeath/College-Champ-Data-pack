tag @a[gamemode=adventure,x=-3914,y=168,z=-4109,dx=8,dy=3,dz=1] add pkw_cp21

execute as @a[tag=pkw_cp21] unless score @s pkw_cp matches 21.. at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1
execute as @a[tag=pkw_cp21] unless score @s pkw_cp matches 21.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 7-3 (The Ladder Flip)","bold": true,"color":"dark_red"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp21] unless score @s pkw_cp matches 21.. run tellraw @s ["",{"text": "["},{"text": "✶","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Course 7 (Nether)","bold": true,"color":"dark_red"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp21] unless score @s pkw_cp matches 21.. run tellraw @a ["",{"text": "["},{"text": "✔","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "完成了","color":"gray","bold": true},{"text": "Course 7 (Nether)","bold": true,"color":"dark_red"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp21] unless entity @a[scores={pkw_cp=21..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 7-3 (The Ladder Flip)","bold": true,"color":"dark_red"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp21] unless score @s pkw_cp matches 21.. run scoreboard players set @s pkw_cp 21

tag @a remove pkw_cp21