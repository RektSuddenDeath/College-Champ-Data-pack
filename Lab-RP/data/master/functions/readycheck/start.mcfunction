
schedule clear master:readycheck/detect
scoreboard objectives remove readycheck
scoreboard objectives add readycheck trigger
scoreboard players enable @a[team=!spec] readycheck
scoreboard players set @a readycheck 0
scoreboard players set readyteams readycheck 0
scoreboard players set timeout readycheck 0

scoreboard players set red readycheck 0
scoreboard players set blue readycheck 0
scoreboard players set green readycheck 0
scoreboard players set yellow readycheck 0
scoreboard players set cyan readycheck 0
scoreboard players set pink readycheck 0
scoreboard players set orange readycheck 0
scoreboard players set purple readycheck 0
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a[team=spec] "§aA reafy check is happening"

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ""
tellraw @a ["  ",{"text":"你的队伍准备好了吗？","bold": true,"color": "yellow"}]
tellraw @a " "
tellraw @a " "
tellraw @a ["      ",{"text": "是","bold": true,"color": "green","clickEvent": {"action":"run_command","value": "/trigger readycheck set 1"}},"        ",{"text": "否","bold": true,"color":"red","clickEvent": {"action":"run_command","value": "/trigger readycheck set 2"}}]
tellraw @a ""
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

function master:readycheck/detect