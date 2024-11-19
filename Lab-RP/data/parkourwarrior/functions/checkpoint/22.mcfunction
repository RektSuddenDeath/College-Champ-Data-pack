tag @a[gamemode=adventure,x=-3908,y=167,z=-4162,dx=9,dy=3,dz=1] add pkw_cp22

execute as @a[tag=pkw_cp22] unless score @s pkw_cp matches 22.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp22] unless score @s pkw_cp matches 22.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 8-1 (Take The L)","bold": true,"color":"light_purple"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp22] unless entity @a[scores={pkw_cp=22..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 8-1 (Take The L)","bold": true,"color":"light_purple"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp22] unless score @s pkw_cp matches 22.. run scoreboard players set @s pkw_cp 22

tag @a remove pkw_cp22