
tag @a[gamemode=adventure,x=-4036,y=135,z=-4049,dx=1,dy=4,dz=8] add pkw_cp2

execute as @a[tag=pkw_cp2] unless score @s pkw_cp matches 2.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp2] unless score @s pkw_cp matches 2.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 1-2 (One Upper)","bold": true,"color":"green"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp2] unless entity @a[scores={pkw_cp=2..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 1-2 (One Upper)","bold": true,"color":"green"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp2] unless score @s pkw_cp matches 2.. run scoreboard players set @s pkw_cp 2

tag @a remove pkw_cp2