tag @a[gamemode=adventure,x=-3976,y=139,z=-4315,dx=13,dy=4,dz=4] add pkw_cp11

execute as @a[tag=pkw_cp11] unless score @s pkw_cp matches 11.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp11] unless score @s pkw_cp matches 11.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 4-2 (The Edge Clinger)","bold": true,"color":"blue"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp11] unless entity @a[scores={pkw_cp=11..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 4-2 (The Edge Clinger)","bold": true,"color":"blue"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp11] unless score @s pkw_cp matches 11.. run scoreboard players set @s pkw_cp 11

tag @a remove pkw_cp11