

# Generate a random code for team elimination
execute store result score random_ally_kill_message rsr_game run random value 1..10
execute if score random_ally_kill_message rsr_game matches 1 run data modify storage rsr_game ally_kill_message set value "§7真是杀红了眼啊！"
execute if score random_ally_kill_message rsr_game matches 2 run data modify storage rsr_game ally_kill_message set value "§7友谊的小船说翻就翻。"
execute if score random_ally_kill_message rsr_game matches 3 run data modify storage rsr_game ally_kill_message set value "§7也许这是必要的牺牲？"
execute if score random_ally_kill_message rsr_game matches 4 run data modify storage rsr_game ally_kill_message set value "§7他们的语音估计要吵起来了……"
execute if score random_ally_kill_message rsr_game matches 5 run data modify storage rsr_game ally_kill_message set value "§7但是这么做是没有加分的。"
execute if score random_ally_kill_message rsr_game matches 6 run data modify storage rsr_game ally_kill_message set value "§7下次应该看清楚谁是对手再出手。"
execute if score random_ally_kill_message rsr_game matches 7 run data modify storage rsr_game ally_kill_message set value "§7反击回去或许不是个好主意……"
execute if score random_ally_kill_message rsr_game matches 8 run data modify storage rsr_game ally_kill_message set value "§7距离游戏结束又近了一步。"
execute if score random_ally_kill_message rsr_game matches 9 run data modify storage rsr_game ally_kill_message set value "§7真的这么急着下班吗……"
execute if score random_ally_kill_message rsr_game matches 10 run data modify storage rsr_game ally_kill_message set value "§7火球可不会自己绕开你的队友……"


# Judge Kill One By One
tag @a[tag=dead] add queue_kill_judge

function rocketspleefrush:kill/queue_judge

# Team Elimination

execute as @p[team=red,tag=dead] unless entity @a[team=red,gamemode=adventure] run tellraw @a ["","§7[§r楒§7] ",{"text": "红队","color":"red"},{"text": "已被团灭！"}]
execute as @p[team=blue,tag=dead] unless entity @a[team=blue,gamemode=adventure] run tellraw @a ["","§7[§r楒§7] ",{"text": "蓝队","color":"blue"},{"text": "已被团灭！"}]
execute as @p[team=green,tag=dead] unless entity @a[team=green,gamemode=adventure] run tellraw @a ["","§7[§r楒§7] ",{"text": "绿队","color":"green"},{"text": "已被团灭！"}]
execute as @p[team=yellow,tag=dead] unless entity @a[team=yellow,gamemode=adventure] run tellraw @a ["","§7[§r楒§7] ",{"text": "黄队","color":"yellow"},{"text": "已被团灭！"}]
execute as @p[team=cyan,tag=dead] unless entity @a[team=cyan,gamemode=adventure] run tellraw @a ["","§7[§r楒§7] ",{"text": "青队","color":"dark_aqua"},{"text": "已被团灭！"}]
execute as @p[team=orange,tag=dead] unless entity @a[team=orange,gamemode=adventure] run tellraw @a ["","§7[§r楒§7] ",{"text": "橙队","color":"gold"},{"text": "已被团灭！"}]
execute as @p[team=purple,tag=dead] unless entity @a[team=purple,gamemode=adventure] run tellraw @a ["","§7[§r楒§7] ",{"text": "紫队","color":"dark_purple"},{"text": "已被团灭！"}]
execute as @p[team=pink,tag=dead] unless entity @a[team=pink,gamemode=adventure] run tellraw @a ["","§7[§r楒§7] ",{"text": "粉队","color":"light_purple"},{"text": "已被团灭！"}]

execute as @p[team=red,tag=dead] unless entity @a[team=red,tag=alive] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=blue,tag=dead] unless entity @a[team=blue,tag=alive] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=green,tag=dead] unless entity @a[team=green,tag=alive] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=yellow,tag=dead] unless entity @a[team=yellow,tag=alive] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=cyan,tag=dead] unless entity @a[team=cyan,tag=alive] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=pink,tag=dead] unless entity @a[team=pink,tag=alive] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=orange,tag=dead] unless entity @a[team=orange,tag=alive] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=purple,tag=dead] unless entity @a[team=purple,tag=alive] run execute as @a at @s run playsound sound.team_eliminated record @s

# Cleanup
tag @a remove temp_haskiller
tag @a remove rsr_nokiller
tag @a remove suffocation
tag @a remove logout
tag @a remove void
scoreboard players set @a rsr_kills 0
scoreboard players set @a rsr_death 0
scoreboard players set @a rsr_logout 0

scoreboard players set @a redKills 0
scoreboard players set @a blueKills 0
scoreboard players set @a greenKills 0
scoreboard players set @a yellowKills 0
scoreboard players set @a pinkKills 0
scoreboard players set @a purpleKills 0
scoreboard players set @a cyanKills 0
scoreboard players set @a orangeKills 0

scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0

tag @a remove rsr_killed_teammate
advancement revoke @a from utils:killed