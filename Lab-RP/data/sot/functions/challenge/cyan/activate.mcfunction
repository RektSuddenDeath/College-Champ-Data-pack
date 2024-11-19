
execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s if block ~ ~ ~ oak_button[powered=true] run setblock ~ ~ ~ oak_button[face=floor,powered=false]

# Counts nearby players
scoreboard players set cyan SotChalPlayers 0
execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run execute as @a[team=cyan,distance=0..20] run scoreboard players add cyan SotChalPlayers 1

# Fails if Challenge Button is not Found.
execute if score cyan SotChallengeState matches 0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run tellraw @a[team=cyan,distance=0..20] ["§c挑战房间尚未解锁。请在§e黄色通道§c寻找按钮！"]
execute if score cyan SotChallengeState matches 0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run return 0

# Fails if there's more than 1 player nearby
execute if score cyan SotChalPlayers matches 2.. run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run tellraw @a[team=cyan,distance=0..20] ["§c超过1名玩家在挑战区域范围内，请只留一名玩家！"]
execute if score cyan SotChalPlayers matches 2.. run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run return 0

# Fails if the challenger is not close enough to the button
scoreboard players set cyan SotChalPlayers 0
execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run execute as @a[team=cyan,distance=0..1.5] run scoreboard players add cyan SotChalPlayers 1
execute if score cyan SotChalPlayers matches 0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run tellraw @a[team=cyan,distance=0..20] ["§c请靠近启动按钮再开始挑战！"]
execute if score cyan SotChalPlayers matches 0 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run return 0

# Prepare phase if there's only 1 player
execute if score cyan SotChalPlayers matches 1 run execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=cyan] at @s run function sot:challenge/cyan/prepare