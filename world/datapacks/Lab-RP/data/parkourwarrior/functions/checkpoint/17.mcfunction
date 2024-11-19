tag @a[gamemode=adventure,x=-3979,y=153,z=-4088,dx=10,dy=6,dz=1] add pkw_cp17

execute as @a[tag=pkw_cp17] unless score @s pkw_cp matches 17.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp17] unless score @s pkw_cp matches 17.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 6-2 (The Tuning Forks)","bold": true,"color":"gray"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp17] unless entity @a[scores={pkw_cp=17..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 6-2 (The Tuning Forks)","bold": true,"color":"gray"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp17] unless score @s pkw_cp matches 17.. run scoreboard players set @s pkw_cp 17

tag @a remove pkw_cp17