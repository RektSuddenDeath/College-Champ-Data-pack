tag @a[gamemode=adventure,x=-3915,y=164,z=-4074,dx=8,dy=4,dz=1] add pkw_cp20

execute as @a[tag=pkw_cp20] unless score @s pkw_cp matches 20.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp20] unless score @s pkw_cp matches 20.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 7-2 (The Swapcicles)","bold": true,"color":"dark_red"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp20] unless entity @a[scores={pkw_cp=20..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 7-2 (The Swapcicles)","bold": true,"color":"dark_red"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp20] unless score @s pkw_cp matches 20.. run scoreboard players set @s pkw_cp 20

tag @a remove pkw_cp20