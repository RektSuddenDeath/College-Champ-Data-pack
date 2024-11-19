tag @a[gamemode=adventure,x=-4005,y=143,z=-4346,dx=4,dy=3,dz=8] add pkw_cp10

execute as @a[tag=pkw_cp10] unless score @s pkw_cp matches 10.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp10] unless score @s pkw_cp matches 10.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 4-1 (Icy Leap)","bold": true,"color":"blue"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp10] unless entity @a[scores={pkw_cp=10..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 4-1 (Icy Leap)","bold": true,"color":"blue"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp10] unless score @s pkw_cp matches 10.. run scoreboard players set @s pkw_cp 10

tag @a remove pkw_cp10