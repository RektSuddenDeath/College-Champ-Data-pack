tag @a[gamemode=adventure,x=-3901,y=201,z=-4281,dx=2,dy=3,dz=2] add pkw_cp24

execute as @a[tag=pkw_cp24] unless score @s pkw_cp matches 24.. at @s run execute as @a at @s run playsound minecraft:entity.ender_dragon.death hostile @s ~ ~ ~ 0.8 1
execute as @a[tag=pkw_cp24] unless score @s pkw_cp matches 24.. run tellraw @s ["",{"text": "["},{"text": "➤","color":"yellow"},{"text": "]"},{"text": " 你完成了","bold": true},{"text": "Stage 8-3 (The City at the End of the Game)","bold": true,"color":"light_purple"},{"text": "!","bold":true}]
execute as @a[tag=pkw_cp24] unless entity @a[scores={pkw_cp=24..}] run tellraw @a ["",{"text": "["},{"text": "✩","color":"aqua"},{"text": "] "},{"selector":"@s"},{"text": "第一个完成了","bold": true,"color":"gray"},{"text": "Stage 8-3 (The City at the End of the Game)","bold": true,"color":"light_purple"},{"text": "!","bold":true,"color":"gray"}]
execute as @a[tag=pkw_cp24] unless score @s pkw_cp matches 24.. run tellraw @a [{"color":"red","text":"———————————————————————————————————"}]
execute as @a[tag=pkw_cp24] unless score @s pkw_cp matches 24.. run tellraw @a ["\n",{"text":"  "},{"selector":"@s","bold":true},{"text": " 已完成全部挑战！恭喜！","color":"gold","bold":true},"\n"]
execute as @a[tag=pkw_cp24] unless score @s pkw_cp matches 24.. run tellraw @a [{"color":"red","text":"———————————————————————————————————"}]
execute as @a[tag=pkw_cp24] unless score @s pkw_cp matches 24.. run gamemode spectator @s
execute as @a[tag=pkw_cp24] unless entity @a[scores={pkw_cp=24..}] run function parkourwarrior:checkpoint/night
execute as @a[tag=pkw_cp24] unless entity @a[scores={pkw_cp=24..}] run time set 10000
execute as @a[tag=pkw_cp24] unless score @s pkw_cp matches 24.. run scoreboard players set @s pkw_cp 24


tag @a remove pkw_cp24
