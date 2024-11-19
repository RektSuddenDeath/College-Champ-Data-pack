
schedule clear master:reafycheck/detect
scoreboard objectives remove reafycheck
scoreboard objectives add reafycheck trigger
scoreboard players enable @a[team=!spec] reafycheck
scoreboard players set @a reafycheck 0
scoreboard players set total reafycheck 0
scoreboard players set ready reafycheck 0
scoreboard players set answered reafycheck 0
scoreboard players set timeout reafycheck 60
scoreboard players set timeout_t reafycheck 0

execute as @a[team=!spec] run scoreboard players add total reafycheck 1

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a[team=spec] "§aAn individual reafy check is happening"

tellraw @a[team=!spec] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=!spec] " "
tellraw @a[team=!spec] ""
tellraw @a[team=!spec] ["  ",{"text":"你准备好了吗？","bold": true,"color": "yellow"}]
tellraw @a[team=!spec] "  §7- 所有玩家均需要作答"
tellraw @a[team=!spec] " "
tellraw @a[team=!spec] ["      ",{"text": "是","bold": true,"color": "green","clickEvent": {"action":"run_command","value": "/trigger reafycheck set 1"}},"        ",{"text": "否","bold": true,"color":"red","clickEvent": {"action":"run_command","value": "/trigger reafycheck set 2"}}]
tellraw @a[team=!spec] ""
tellraw @a[team=!spec] " "
tellraw @a[team=!spec] [{"color":"green","text":"———————————————————————————————————"}]

function master:reafycheck/detect