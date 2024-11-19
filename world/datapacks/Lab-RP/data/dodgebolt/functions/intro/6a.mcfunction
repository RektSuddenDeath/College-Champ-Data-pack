
scoreboard players set intro_active tourney_stats 0
schedule clear dodgebolt:intro/hold
kill @e[type=armor_stand,tag=Intro]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  请等待游戏开始……","color":"red"}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]


tp @a[tag=!db_teamone,tag=!db_teamtwo] 10036 192 9979 facing 10000 192 9979
gamemode adventure @a



