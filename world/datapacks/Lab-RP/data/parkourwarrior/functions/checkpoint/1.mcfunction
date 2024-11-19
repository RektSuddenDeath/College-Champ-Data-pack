
tag @a[gamemode=adventure,x=-4006,y=129,z=-4037,dx=7,dy=3,dz=1] add pkw_cp1

execute as @a[tag=pkw_cp1] unless score @s pkw_cp matches 1.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp1] unless score @s pkw_cp matches 1.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 1-1 (Angled Bounce)","bold": true,"color":"green"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp1] unless entity @a[scores={pkw_cp=1..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 1-1 (Angled Bounce)","bold": true,"color":"green"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp1] unless score @s pkw_cp matches 1.. run scoreboard players set @s pkw_cp 1

tag @a remove pkw_cp1