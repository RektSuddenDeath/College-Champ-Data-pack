tag @a[gamemode=adventure,x=-3923,y=165,z=-4035,dx=1,dy=3,dz=8] add pkw_cp19

execute as @a[tag=pkw_cp19] unless score @s pkw_cp matches 19.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp19] unless score @s pkw_cp matches 19.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 7-1 (The Bending Barrys)","bold": true,"color":"dark_red"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp19] unless entity @a[scores={pkw_cp=19..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 7-1 (The Bending Barrys)","bold": true,"color":"dark_red"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp19] unless score @s pkw_cp matches 19.. run scoreboard players set @s pkw_cp 19

tag @a remove pkw_cp19