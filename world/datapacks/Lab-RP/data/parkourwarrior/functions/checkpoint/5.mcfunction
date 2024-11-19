tag @a[gamemode=adventure,x=-4050,y=138,z=-4169,dx=11,dy=4,dz=1] add pkw_cp5

execute as @a[tag=pkw_cp5] unless score @s pkw_cp matches 5.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp5] unless score @s pkw_cp matches 5.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 2-2 (Wall Jumps)","bold": true,"color":"yellow"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp5] unless entity @a[scores={pkw_cp=5..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 2-2 (Wall Jumps)","bold": true,"color":"yellow"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp5] unless score @s pkw_cp matches 5.. run scoreboard players set @s pkw_cp 5

tag @a remove pkw_cp5