
schedule clear master:reafycheck/detect
scoreboard objectives remove reafycheck
scoreboard objectives add reafycheck trigger
scoreboard players enable @a reafycheck
scoreboard players set @a reafycheck 0
scoreboard players set total reafycheck 0
scoreboard players set ready reafycheck 0
scoreboard players set answered reafycheck 0
scoreboard players set timeout reafycheck 60
scoreboard players set timeout_t reafycheck 0

execute as @a run scoreboard players add total reafycheck 1

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a "§aAn individual reafy check is happening"

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a "  §e§l参赛须知："
tellraw @a [{"text": "","color": "#66CCFF"},"  参与本届活动，代表你同意以下条款："]
tellraw @a ["  - 无论接下来 2.5 小时发生什么，你都§6不能生气"]
tellraw @a ["  - 请善待你的队友。"]
tellraw @a ["  - 请善待你的设备，主办方不承担也不会修理键盘、鼠标等。"]
tellraw @a ["  - 扣问号还是会被禁言 7.5 秒。"]
tellraw @a ""
tellraw @a [{"text": "","color": "#66CCFF"},"  请选择： ",{"text": "同意","bold": true,"color": "green","clickEvent": {"action":"run_command","value": "/trigger reafycheck set 1"}},"        ",{"text": "如果我非要不同意呢","bold": true,"color":"gray","clickEvent": {"action":"run_command","value": ""}}]

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

function master:reafycheck/detect