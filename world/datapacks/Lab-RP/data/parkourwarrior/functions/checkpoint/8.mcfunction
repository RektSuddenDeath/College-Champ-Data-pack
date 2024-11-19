tag @a[gamemode=adventure,x=-4044,y=137,z=-4278,dx=8,dy=3,dz=1] add pkw_cp8

execute as @a[tag=pkw_cp8] unless score @s pkw_cp matches 8.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp8] unless score @s pkw_cp matches 8.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 3-2 (Harvest Season)","bold": true,"color":"gold"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp8] unless entity @a[scores={pkw_cp=8..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 3-2 (Harvest Season)","bold": true,"color":"gold"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp8] unless score @s pkw_cp matches 8.. run scoreboard players set @s pkw_cp 8

tag @a remove pkw_cp8