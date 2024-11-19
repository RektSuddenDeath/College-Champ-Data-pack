
# Creeper Combat Tag
function skybattle:kill/creepertag

# Detects if the creeper is the last attack
function skybattle:kill/creeperlast

# Fishing Rod Combat Tag
function skybattle:kill/rodtag

# Detects if fishing rod is the last attack. Any attack would override rod combat tag.
function skybattle:kill/rodlast


# Judge Kill One By One
tag @a[scores={sba_death=1..}] add queue_kill_judge

function skybattle:kill/queue_judge

# Team Elimination

execute as @p[team=red,scores={sba_death=1..}] unless entity @a[team=red,gamemode=survival] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "红队","color":"red"},{"text": "已被团灭！"}]
execute as @p[team=blue,scores={sba_death=1..}] unless entity @a[team=blue,gamemode=survival] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "蓝队","color":"blue"},{"text": "已被团灭！"}]
execute as @p[team=green,scores={sba_death=1..}] unless entity @a[team=green,gamemode=survival] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "绿队","color":"green"},{"text": "已被团灭！"}]
execute as @p[team=yellow,scores={sba_death=1..}] unless entity @a[team=yellow,gamemode=survival] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "黄队","color":"yellow"},{"text": "已被团灭！"}]
execute as @p[team=cyan,scores={sba_death=1..}] unless entity @a[team=cyan,gamemode=survival] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "青队","color":"dark_aqua"},{"text": "已被团灭！"}]
execute as @p[team=orange,scores={sba_death=1..}] unless entity @a[team=orange,gamemode=survival] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "橙队","color":"gold"},{"text": "已被团灭！"}]
execute as @p[team=purple,scores={sba_death=1..}] unless entity @a[team=purple,gamemode=survival] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "紫队","color":"dark_purple"},{"text": "已被团灭！"}]
execute as @p[team=pink,scores={sba_death=1..}] unless entity @a[team=pink,gamemode=survival] run tellraw @a ["","[",{"text": "☠☠☠","color":"red"},"] ",{"text": "粉队","color":"light_purple"},{"text": "已被团灭！"}]

execute as @p[team=red,scores={sba_death=1..}] unless entity @a[team=red,gamemode=survival] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=blue,scores={sba_death=1..}] unless entity @a[team=blue,gamemode=survival] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=green,scores={sba_death=1..}] unless entity @a[team=green,gamemode=survival] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=yellow,scores={sba_death=1..}] unless entity @a[team=yellow,gamemode=survival] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=cyan,scores={sba_death=1..}] unless entity @a[team=cyan,gamemode=survival] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=orange,scores={sba_death=1..}] unless entity @a[team=orange,gamemode=survival] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=purple,scores={sba_death=1..}] unless entity @a[team=purple,gamemode=survival] run execute as @a at @s run playsound sound.team_eliminated record @s
execute as @p[team=pink,scores={sba_death=1..}] unless entity @a[team=pink,gamemode=survival] run execute as @a at @s run playsound sound.team_eliminated record @s

# Cleanup
tag @a remove temp_haskiller
tag @a remove sba_nokiller
tag @a remove suffocation
tag @a remove logout
tag @a remove void
scoreboard players set @a sba_kills 0
scoreboard players set @a sba_death 0
scoreboard players set @a sba_logout 0

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
advancement revoke @a from utils:killed