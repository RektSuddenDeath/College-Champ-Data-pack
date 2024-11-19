tag @a[gamemode=adventure,x=-3975,y=150,z=-4129,dx=9,dy=4,dz=2] add pkw_cp16

execute as @a[tag=pkw_cp16] unless score @s pkw_cp matches 16.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp16] unless score @s pkw_cp matches 16.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 6-1 (The Hanging Tubes)","bold": true,"color":"gray"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp16] unless entity @a[scores={pkw_cp=16..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 6-1 (The Hanging Tubes)","bold": true,"color":"gray"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp16] unless score @s pkw_cp matches 16.. run scoreboard players set @s pkw_cp 16

tag @a remove pkw_cp16