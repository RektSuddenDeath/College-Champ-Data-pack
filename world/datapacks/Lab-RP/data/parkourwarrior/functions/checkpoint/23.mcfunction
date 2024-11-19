tag @a[gamemode=adventure,x=-3910,y=167,z=-4209,dx=4,dy=4,dz=1] add pkw_cp23

execute as @a[tag=pkw_cp23] unless score @s pkw_cp matches 23.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp23] unless score @s pkw_cp matches 23.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 8-2 (The Chain Pipes)","bold": true,"color":"light_purple"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp23] unless entity @a[scores={pkw_cp=23..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 8-2 (The Chain Pipes)","bold": true,"color":"light_purple"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp23] unless score @s pkw_cp matches 23.. run scoreboard players set @s pkw_cp 23

tag @a remove pkw_cp23