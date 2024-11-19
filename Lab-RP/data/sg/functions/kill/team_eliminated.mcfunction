execute as @p[team=red,scores={sg_death=1..}] unless entity @a[team=red,gamemode=adventure] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "红队","color":"red"},{"text": "已被团灭！"}]
execute as @p[team=red,scores={sg_death=1..}] unless entity @a[team=red,gamemode=adventure] run execute as @a[team=red] run scoreboard players operation @s sg_teampos = teamCount sg_game
execute as @p[team=red,scores={sg_death=1..}] unless entity @a[team=red,gamemode=adventure] run scoreboard players remove teamCount sg_game 1
execute as @p[team=red,scores={sg_death=1..}] unless entity @a[team=red,gamemode=adventure] run execute as @a at @s run playsound sound.team_eliminated record @s

execute as @p[team=blue,scores={sg_death=1..}] unless entity @a[team=blue,gamemode=adventure] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "蓝队","color":"blue"},{"text": "已被团灭！"}]
execute as @p[team=blue,scores={sg_death=1..}] unless entity @a[team=blue,gamemode=adventure] run execute as @a[team=blue] run scoreboard players operation @s sg_teampos = teamCount sg_game
execute as @p[team=blue,scores={sg_death=1..}] unless entity @a[team=blue,gamemode=adventure] run scoreboard players remove teamCount sg_game 1
execute as @p[team=blue,scores={sg_death=1..}] unless entity @a[team=blue,gamemode=adventure] run execute as @a at @s run playsound sound.team_eliminated record @s

execute as @p[team=green,scores={sg_death=1..}] unless entity @a[team=green,gamemode=adventure] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "绿队","color":"green"},{"text": "已被团灭！"}]
execute as @p[team=green,scores={sg_death=1..}] unless entity @a[team=green,gamemode=adventure] run execute as @a[team=green] run scoreboard players operation @s sg_teampos = teamCount sg_game
execute as @p[team=green,scores={sg_death=1..}] unless entity @a[team=green,gamemode=adventure] run scoreboard players remove teamCount sg_game 1
execute as @p[team=green,scores={sg_death=1..}] unless entity @a[team=green,gamemode=adventure] run execute as @a at @s run playsound sound.team_eliminated record @s

execute as @p[team=yellow,scores={sg_death=1..}] unless entity @a[team=yellow,gamemode=adventure] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "黄队","color":"yellow"},{"text": "已被团灭！"}]
execute as @p[team=yellow,scores={sg_death=1..}] unless entity @a[team=yellow,gamemode=adventure] run execute as @a[team=yellow] run scoreboard players operation @s sg_teampos = teamCount sg_game
execute as @p[team=yellow,scores={sg_death=1..}] unless entity @a[team=yellow,gamemode=adventure] run scoreboard players remove teamCount sg_game 1
execute as @p[team=yellow,scores={sg_death=1..}] unless entity @a[team=yellow,gamemode=adventure] run execute as @a at @s run playsound sound.team_eliminated record @s

execute as @p[team=cyan,scores={sg_death=1..}] unless entity @a[team=cyan,gamemode=adventure] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "青队","color":"dark_aqua"},{"text": "已被团灭！"}]
execute as @p[team=cyan,scores={sg_death=1..}] unless entity @a[team=cyan,gamemode=adventure] run execute as @a[team=cyan] run scoreboard players operation @s sg_teampos = teamCount sg_game
execute as @p[team=cyan,scores={sg_death=1..}] unless entity @a[team=cyan,gamemode=adventure] run scoreboard players remove teamCount sg_game 1
execute as @p[team=cyan,scores={sg_death=1..}] unless entity @a[team=cyan,gamemode=adventure] run execute as @a at @s run playsound sound.team_eliminated record @s

execute as @p[team=orange,scores={sg_death=1..}] unless entity @a[team=orange,gamemode=adventure] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "橙队","color":"gold"},{"text": "已被团灭！"}]
execute as @p[team=orange,scores={sg_death=1..}] unless entity @a[team=orange,gamemode=adventure] run execute as @a[team=orange] run scoreboard players operation @s sg_teampos = teamCount sg_game
execute as @p[team=orange,scores={sg_death=1..}] unless entity @a[team=orange,gamemode=adventure] run scoreboard players remove teamCount sg_game 1
execute as @p[team=orange,scores={sg_death=1..}] unless entity @a[team=orange,gamemode=adventure] run execute as @a at @s run playsound sound.team_eliminated record @s

execute as @p[team=purple,scores={sg_death=1..}] unless entity @a[team=purple,gamemode=adventure] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "紫队","color":"dark_purple"},{"text": "已被团灭！"}]
execute as @p[team=purple,scores={sg_death=1..}] unless entity @a[team=purple,gamemode=adventure] run execute as @a[team=purple] run scoreboard players operation @s sg_teampos = teamCount sg_game
execute as @p[team=purple,scores={sg_death=1..}] unless entity @a[team=purple,gamemode=adventure] run scoreboard players remove teamCount sg_game 1
execute as @p[team=purple,scores={sg_death=1..}] unless entity @a[team=purple,gamemode=adventure] run execute as @a at @s run playsound sound.team_eliminated record @s

execute as @p[team=pink,scores={sg_death=1..}] unless entity @a[team=pink,gamemode=adventure] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "粉队","color":"light_purple"},{"text": "已被团灭！"}]
execute as @p[team=pink,scores={sg_death=1..}] unless entity @a[team=pink,gamemode=adventure] run execute as @a[team=pink] run scoreboard players operation @s sg_teampos = teamCount sg_game
execute as @p[team=pink,scores={sg_death=1..}] unless entity @a[team=pink,gamemode=adventure] run scoreboard players remove teamCount sg_game 1
execute as @p[team=pink,scores={sg_death=1..}] unless entity @a[team=pink,gamemode=adventure] run execute as @a at @s run playsound sound.team_eliminated record @s