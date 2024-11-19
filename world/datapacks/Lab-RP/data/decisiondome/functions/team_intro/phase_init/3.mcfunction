kill @e[type=armor_stand,tag=Intro]
kill @e[type=marker,tag=team_intro]
summon armor_stand -10000 114.50 -9980 {Tags:["Intro"],NoGravity:1b,Invisible:1b,Rotation:[180f,25f]}

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a " "
tellraw @a ""
tellraw @a ["  ","§f§l你将参与§e§l8个游戏§f§l，并尝试在当中获取最多的分数。"]
tellraw @a " "
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

schedule function decisiondome:team_intro/color_dome/white 15t

schedule clear decisiondome:team_intro/phase_loop/1
function decisiondome:team_intro/phase_loop/3