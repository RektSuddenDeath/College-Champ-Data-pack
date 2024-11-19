tag @a[gamemode=adventure,x=-3967,y=145,z=-4197,dx=6,dy=4,dz=1] add pkw_cp14

execute as @a[tag=pkw_cp14] unless score @s pkw_cp matches 14.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp14] unless score @s pkw_cp matches 14.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 5-2 (Arches)","bold": true,"color":"aqua"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp14] unless entity @a[scores={pkw_cp=14..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 5-2 (Arches)","bold": true,"color":"aqua"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp14] unless score @s pkw_cp matches 14.. run scoreboard players set @s pkw_cp 14

tag @a remove pkw_cp14