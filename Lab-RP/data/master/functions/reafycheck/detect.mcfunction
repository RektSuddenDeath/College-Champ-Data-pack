
scoreboard players add timeout_t reafycheck 1
execute if score timeout_t reafycheck matches 20 run scoreboard players remove timeout reafycheck 1
execute if score timeout_t reafycheck matches 20 run scoreboard players set timeout_t reafycheck 0

scoreboard players set ready reafycheck 0
scoreboard players set answered reafycheck 0
execute as @a[scores={reafycheck=1}] run scoreboard players add ready reafycheck 1
execute as @a[scores={reafycheck=1..}] run scoreboard players add answered reafycheck 1

execute as @a[scores={reafycheck=2}] run tellraw @a ["",{"selector":"@s","bold": true},"§c§l未准备！"]
execute as @a[scores={reafycheck=2}] run scoreboard players set @s reafycheck 3

title @a[team=!spec] times 0 3 0
title @a[team=!spec,scores={reafycheck=0}] title "§c你还未作答是否准备！"
title @a[team=!spec,scores={reafycheck=1..}] title ""

execute if score answered reafycheck matches ..25 run title @a actionbar ["[§a!§f] §bReafy Check: ",{"score":{"name": "timeout","objective": "reafycheck"},"color":"dark_green"},"§2s","§7 - ","已准备玩家：",{"score":{"name": "ready","objective": "reafycheck"},"color": "green"},"§f/",{"score":{"name": "total","objective": "reafycheck"},"color": "red"}]
execute if score answered reafycheck matches 26.. run title @a actionbar ["[§a!§f] §bReafy Check: ",{"score":{"name": "timeout","objective": "reafycheck"},"color":"dark_green"},"§2s","§7 - ","正在等待：",{"selector":"@a[team=!spec,scores={reafycheck=0}]"}]

execute if score answered reafycheck = total reafycheck run title @a actionbar ""

execute if score answered reafycheck = total reafycheck if score ready reafycheck = total reafycheck run tellraw @a "§a§l所有人均准备好了！"
execute if score answered reafycheck = total reafycheck if score ready reafycheck < total reafycheck run tellraw @a "§c§l准备检查失败！有人未准备好。"

execute if score timeout reafycheck matches 1.. if score answered reafycheck < total reafycheck run schedule function master:reafycheck/detect 1t