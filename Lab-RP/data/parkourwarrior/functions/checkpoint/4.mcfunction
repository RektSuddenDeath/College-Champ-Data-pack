
tag @a[gamemode=adventure,x=-4051,y=139,z=-4130,dx=11,dy=3,dz=1] add pkw_cp4

execute as @a[tag=pkw_cp4] unless score @s pkw_cp matches 4.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp4] unless score @s pkw_cp matches 4.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 2-1 (The Six Rings)","bold": true,"color":"yellow"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp4] unless entity @a[scores={pkw_cp=4..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 2-1 (The Six Rings)","bold": true,"color":"yellow"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp4] unless score @s pkw_cp matches 4.. run scoreboard players set @s pkw_cp 4

tag @a remove pkw_cp4