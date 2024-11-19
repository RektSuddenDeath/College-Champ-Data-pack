# Cleanup
forceload add -10000 -10000
kill @e[type=marker,tag=teamsort]

# Init namespace
scoreboard objectives add temp_teamscore_damage dummy
scoreboard objectives add temp_teamscore_taken dummy

# Negate the effect of normal scores.

$scoreboard players operation 红队 overallscore -= red $(namespace)
$scoreboard players operation 蓝队 overallscore -= blue $(namespace)
$scoreboard players operation 绿队 overallscore -= green $(namespace)
$scoreboard players operation 黄队 overallscore -= yellow $(namespace)
$scoreboard players operation 青队 overallscore -= cyan $(namespace)
$scoreboard players operation 橙队 overallscore -= orange $(namespace)
$scoreboard players operation 紫队 overallscore -= purple $(namespace)
$scoreboard players operation 粉队 overallscore -= pink $(namespace)

$scoreboard players operation red GameRankTarget = red $(namespace)
$scoreboard players operation blue GameRankTarget = blue $(namespace)
$scoreboard players operation green GameRankTarget = green $(namespace)
$scoreboard players operation yellow GameRankTarget = yellow $(namespace)
$scoreboard players operation cyan GameRankTarget = cyan $(namespace)
$scoreboard players operation pink GameRankTarget = pink $(namespace)
$scoreboard players operation orange GameRankTarget = orange $(namespace)
$scoreboard players operation purple GameRankTarget = purple $(namespace)

# Sort the teams
function master:negative_multi/sort/rankstart

# Solve the scores.
scoreboard players set -3 math -3
scoreboard players set -4 math -4
scoreboard players set -5 math -5
scoreboard players set -6 math -6
scoreboard players set -7 math -7

# Damage Multiplier. (it's now positive)
execute as @e[type=marker,tag=teamsort,scores={TeamRank=8}] run scoreboard players operation @s TeamCached /= -3 math
execute as @e[type=marker,tag=teamsort,scores={TeamRank=7}] run scoreboard players operation @s TeamCached /= -4 math
execute as @e[type=marker,tag=teamsort,scores={TeamRank=6}] run scoreboard players operation @s TeamCached /= -4 math
execute as @e[type=marker,tag=teamsort,scores={TeamRank=5}] run scoreboard players operation @s TeamCached /= -5 math
execute as @e[type=marker,tag=teamsort,scores={TeamRank=4}] run scoreboard players operation @s TeamCached /= -5 math
execute as @e[type=marker,tag=teamsort,scores={TeamRank=3}] run scoreboard players operation @s TeamCached /= -6 math
execute as @e[type=marker,tag=teamsort,scores={TeamRank=2}] run scoreboard players operation @s TeamCached /= -6 math
execute as @e[type=marker,tag=teamsort,scores={TeamRank=1}] run scoreboard players operation @s TeamCached /= -6 math

# 
execute as @e[type=marker,tag=red,tag=teamsort] run scoreboard players operation red temp_teamscore_damage = @s TeamCached
execute as @e[type=marker,tag=blue,tag=teamsort] run scoreboard players operation blue temp_teamscore_damage = @s TeamCached
execute as @e[type=marker,tag=green,tag=teamsort] run scoreboard players operation green temp_teamscore_damage = @s TeamCached
execute as @e[type=marker,tag=yellow,tag=teamsort] run scoreboard players operation yellow temp_teamscore_damage = @s TeamCached
execute as @e[type=marker,tag=cyan,tag=teamsort] run scoreboard players operation cyan temp_teamscore_damage = @s TeamCached
execute as @e[type=marker,tag=pink,tag=teamsort] run scoreboard players operation pink temp_teamscore_damage = @s TeamCached
execute as @e[type=marker,tag=orange,tag=teamsort] run scoreboard players operation orange temp_teamscore_damage = @s TeamCached
execute as @e[type=marker,tag=purple,tag=teamsort] run scoreboard players operation purple temp_teamscore_damage = @s TeamCached

# Calculate amount.
scoreboard players set red temp_teamscore_taken 0
#scoreboard players operation red temp_teamscore_taken += red temp_teamscore_damage
scoreboard players operation red temp_teamscore_taken += blue temp_teamscore_damage
scoreboard players operation red temp_teamscore_taken += green temp_teamscore_damage
scoreboard players operation red temp_teamscore_taken += yellow temp_teamscore_damage
scoreboard players operation red temp_teamscore_taken += cyan temp_teamscore_damage
scoreboard players operation red temp_teamscore_taken += pink temp_teamscore_damage
scoreboard players operation red temp_teamscore_taken += orange temp_teamscore_damage
scoreboard players operation red temp_teamscore_taken += purple temp_teamscore_damage

scoreboard players set blue temp_teamscore_taken 0
scoreboard players operation blue temp_teamscore_taken += red temp_teamscore_damage
#scoreboard players operation blue temp_teamscore_taken += blue temp_teamscore_damage
scoreboard players operation blue temp_teamscore_taken += green temp_teamscore_damage
scoreboard players operation blue temp_teamscore_taken += yellow temp_teamscore_damage
scoreboard players operation blue temp_teamscore_taken += cyan temp_teamscore_damage
scoreboard players operation blue temp_teamscore_taken += pink temp_teamscore_damage
scoreboard players operation blue temp_teamscore_taken += orange temp_teamscore_damage
scoreboard players operation blue temp_teamscore_taken += purple temp_teamscore_damage

scoreboard players set green temp_teamscore_taken 0
scoreboard players operation green temp_teamscore_taken += red temp_teamscore_damage
scoreboard players operation green temp_teamscore_taken += blue temp_teamscore_damage
#scoreboard players operation green temp_teamscore_taken += green temp_teamscore_damage
scoreboard players operation green temp_teamscore_taken += yellow temp_teamscore_damage
scoreboard players operation green temp_teamscore_taken += cyan temp_teamscore_damage
scoreboard players operation green temp_teamscore_taken += pink temp_teamscore_damage
scoreboard players operation green temp_teamscore_taken += orange temp_teamscore_damage
scoreboard players operation green temp_teamscore_taken += purple temp_teamscore_damage

scoreboard players set yellow temp_teamscore_taken 0
scoreboard players operation yellow temp_teamscore_taken += red temp_teamscore_damage
scoreboard players operation yellow temp_teamscore_taken += blue temp_teamscore_damage
scoreboard players operation yellow temp_teamscore_taken += green temp_teamscore_damage
#scoreboard players operation yellow temp_teamscore_taken += yellow temp_teamscore_damage
scoreboard players operation yellow temp_teamscore_taken += cyan temp_teamscore_damage
scoreboard players operation yellow temp_teamscore_taken += pink temp_teamscore_damage
scoreboard players operation yellow temp_teamscore_taken += orange temp_teamscore_damage
scoreboard players operation yellow temp_teamscore_taken += purple temp_teamscore_damage

scoreboard players set cyan temp_teamscore_taken 0
scoreboard players operation cyan temp_teamscore_taken += red temp_teamscore_damage
scoreboard players operation cyan temp_teamscore_taken += blue temp_teamscore_damage
scoreboard players operation cyan temp_teamscore_taken += green temp_teamscore_damage
scoreboard players operation cyan temp_teamscore_taken += yellow temp_teamscore_damage
#scoreboard players operation cyan temp_teamscore_taken += cyan temp_teamscore_damage
scoreboard players operation cyan temp_teamscore_taken += pink temp_teamscore_damage
scoreboard players operation cyan temp_teamscore_taken += orange temp_teamscore_damage
scoreboard players operation cyan temp_teamscore_taken += purple temp_teamscore_damage

scoreboard players set pink temp_teamscore_taken 0
scoreboard players operation pink temp_teamscore_taken += red temp_teamscore_damage
scoreboard players operation pink temp_teamscore_taken += blue temp_teamscore_damage
scoreboard players operation pink temp_teamscore_taken += green temp_teamscore_damage
scoreboard players operation pink temp_teamscore_taken += yellow temp_teamscore_damage
scoreboard players operation pink temp_teamscore_taken += cyan temp_teamscore_damage
#scoreboard players operation pink temp_teamscore_taken += pink temp_teamscore_damage
scoreboard players operation pink temp_teamscore_taken += orange temp_teamscore_damage
scoreboard players operation pink temp_teamscore_taken += purple temp_teamscore_damage

scoreboard players set orange temp_teamscore_taken 0
scoreboard players operation orange temp_teamscore_taken += red temp_teamscore_damage
scoreboard players operation orange temp_teamscore_taken += blue temp_teamscore_damage
scoreboard players operation orange temp_teamscore_taken += green temp_teamscore_damage
scoreboard players operation orange temp_teamscore_taken += yellow temp_teamscore_damage
scoreboard players operation orange temp_teamscore_taken += cyan temp_teamscore_damage
scoreboard players operation orange temp_teamscore_taken += pink temp_teamscore_damage
#scoreboard players operation orange temp_teamscore_taken += orange temp_teamscore_damage
scoreboard players operation orange temp_teamscore_taken += purple temp_teamscore_damage

scoreboard players set purple temp_teamscore_taken 0
scoreboard players operation purple temp_teamscore_taken += red temp_teamscore_damage
scoreboard players operation purple temp_teamscore_taken += blue temp_teamscore_damage
scoreboard players operation purple temp_teamscore_taken += green temp_teamscore_damage
scoreboard players operation purple temp_teamscore_taken += yellow temp_teamscore_damage
scoreboard players operation purple temp_teamscore_taken += cyan temp_teamscore_damage
scoreboard players operation purple temp_teamscore_taken += pink temp_teamscore_damage
scoreboard players operation purple temp_teamscore_taken += orange temp_teamscore_damage
#scoreboard players operation purple temp_teamscore_taken += purple temp_teamscore_damage

# Announce and apply.
tellraw @a[team=red] ["§c[§r鼱§c] ","§c负倍率游戏：本队扣除了其他队伍各",{"score":{"name":"red","objective":"temp_teamscore_damage"},"color":"gold"},"§c分，被其他队伍扣除了",{"score":{"name":"red","objective":"temp_teamscore_taken"},"color":"#E3E3E3"},"§c分！"]
tellraw @a[team=blue] ["§c[§r鼱§c] ","§c负倍率游戏：本队扣除了其他队伍各",{"score":{"name":"blue","objective":"temp_teamscore_damage"},"color":"gold"},"§c分，被其他队伍扣除了",{"score":{"name":"blue","objective":"temp_teamscore_taken"},"color":"#E3E3E3"},"§c分！"]
tellraw @a[team=green] ["§c[§r鼱§c] ","§c负倍率游戏：本队扣除了其他队伍各",{"score":{"name":"green","objective":"temp_teamscore_damage"},"color":"gold"},"§c分，被其他队伍扣除了",{"score":{"name":"green","objective":"temp_teamscore_taken"},"color":"#E3E3E3"},"§c分！"]
tellraw @a[team=yellow] ["§c[§r鼱§c] ","§c负倍率游戏：本队扣除了其他队伍各",{"score":{"name":"yellow","objective":"temp_teamscore_damage"},"color":"gold"},"§c分，被其他队伍扣除了",{"score":{"name":"yellow","objective":"temp_teamscore_taken"},"color":"#E3E3E3"},"§c分！"]
tellraw @a[team=cyan] ["§c[§r鼱§c] ","§c负倍率游戏：本队扣除了其他队伍各",{"score":{"name":"cyan","objective":"temp_teamscore_damage"},"color":"gold"},"§c分，被其他队伍扣除了",{"score":{"name":"cyan","objective":"temp_teamscore_taken"},"color":"#E3E3E3"},"§c分！"]
tellraw @a[team=pink] ["§c[§r鼱§c] ","§c负倍率游戏：本队扣除了其他队伍各",{"score":{"name":"pink","objective":"temp_teamscore_damage"},"color":"gold"},"§c分，被其他队伍扣除了",{"score":{"name":"pink","objective":"temp_teamscore_taken"},"color":"#E3E3E3"},"§c分！"]
tellraw @a[team=orange] ["§c[§r鼱§c] ","§c负倍率游戏：本队扣除了其他队伍各",{"score":{"name":"orange","objective":"temp_teamscore_damage"},"color":"gold"},"§c分，被其他队伍扣除了",{"score":{"name":"orange","objective":"temp_teamscore_taken"},"color":"#E3E3E3"},"§c分！"]
tellraw @a[team=purple] ["§c[§r鼱§c] ","§c负倍率游戏：本队扣除了其他队伍各",{"score":{"name":"purple","objective":"temp_teamscore_damage"},"color":"gold"},"§c分，被其他队伍扣除了",{"score":{"name":"purple","objective":"temp_teamscore_taken"},"color":"#E3E3E3"},"§c分！"]

tellraw @a[team=spec] ["§c[§r鼱§c] 负倍率游戏：各队伍扣分情况： (§b造成伤害§c/§7受到伤害§c)"]
tellraw @a[team=spec] ["  ",{"translate":"team.red"},"§7: ",{"score":{"name":"red","objective":"temp_teamscore_damage"},"color":"aqua"},"§7/",{"score":{"name":"red","objective":"temp_teamscore_taken"},"color":"gray"}]
tellraw @a[team=spec] ["  ",{"translate":"team.blue"},"§7: ",{"score":{"name":"blue","objective":"temp_teamscore_damage"},"color":"aqua"},"§7/",{"score":{"name":"blue","objective":"temp_teamscore_taken"},"color":"gray"}]
tellraw @a[team=spec] ["  ",{"translate":"team.green"},"§7: ",{"score":{"name":"green","objective":"temp_teamscore_damage"},"color":"aqua"},"§7/",{"score":{"name":"green","objective":"temp_teamscore_taken"},"color":"gray"}]
tellraw @a[team=spec] ["  ",{"translate":"team.yellow"},"§7: ",{"score":{"name":"yellow","objective":"temp_teamscore_damage"},"color":"aqua"},"§7/",{"score":{"name":"yellow","objective":"temp_teamscore_taken"},"color":"gray"}]
tellraw @a[team=spec] ["  ",{"translate":"team.cyan"},"§7: ",{"score":{"name":"cyan","objective":"temp_teamscore_damage"},"color":"aqua"},"§7/",{"score":{"name":"cyan","objective":"temp_teamscore_taken"},"color":"gray"}]
tellraw @a[team=spec] ["  ",{"translate":"team.pink"},"§7: ",{"score":{"name":"pink","objective":"temp_teamscore_damage"},"color":"aqua"},"§7/",{"score":{"name":"pink","objective":"temp_teamscore_taken"},"color":"gray"}]
tellraw @a[team=spec] ["  ",{"translate":"team.orange"},"§7: ",{"score":{"name":"orange","objective":"temp_teamscore_damage"},"color":"aqua"},"§7/",{"score":{"name":"orange","objective":"temp_teamscore_taken"},"color":"gray"}]
tellraw @a[team=spec] ["  ",{"translate":"team.purple"},"§7: ",{"score":{"name":"purple","objective":"temp_teamscore_damage"},"color":"aqua"},"§7/",{"score":{"name":"purple","objective":"temp_teamscore_taken"},"color":"gray"}]


scoreboard players operation 红队 overallscore -= red temp_teamscore_taken
scoreboard players operation 蓝队 overallscore -= blue temp_teamscore_taken
scoreboard players operation 绿队 overallscore -= green temp_teamscore_taken
scoreboard players operation 黄队 overallscore -= yellow temp_teamscore_taken
scoreboard players operation 青队 overallscore -= cyan temp_teamscore_taken
scoreboard players operation 橙队 overallscore -= orange temp_teamscore_taken
scoreboard players operation 紫队 overallscore -= purple temp_teamscore_taken
scoreboard players operation 粉队 overallscore -= pink temp_teamscore_taken

