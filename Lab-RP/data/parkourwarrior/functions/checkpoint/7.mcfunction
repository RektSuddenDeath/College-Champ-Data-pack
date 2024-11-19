tag @a[gamemode=adventure,x=-4049,y=136,z=-4241,dx=8,dy=3,dz=1] add pkw_cp7

execute as @a[tag=pkw_cp7] unless score @s pkw_cp matches 7.. at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute as @a[tag=pkw_cp7] unless score @s pkw_cp matches 7.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 3-1 (Trouble Brewing)","bold": true,"color":"gold"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp7] unless entity @a[scores={pkw_cp=7..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 3-1 (Trouble Brewing)","bold": true,"color":"gold"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp7] unless score @s pkw_cp matches 7.. run scoreboard players set @s pkw_cp 7

tag @a remove pkw_cp7