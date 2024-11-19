tag @a[gamemode=adventure,x=-3970,y=142,z=-4235,dx=6,dy=3,dz=1] add pkw_cp13

execute as @a[tag=pkw_cp13] unless score @s pkw_cp matches 13.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp13] unless score @s pkw_cp matches 13.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 5-1 (Pillars)","bold": true,"color":"aqua"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp13] unless entity @a[scores={pkw_cp=13..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 5-1 (Pillars)","bold": true,"color":"aqua"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp13] unless score @s pkw_cp matches 13.. run scoreboard players set @s pkw_cp 13

tag @a remove pkw_cp13