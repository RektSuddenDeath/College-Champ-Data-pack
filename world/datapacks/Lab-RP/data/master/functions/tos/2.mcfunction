
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ",{"text":"地图信息","bold": true,"color": "yellow"},{"text": " (2/8)","color":"gray"}]
tellraw @a ""
tellraw @a "  此地图借用了 MCC 的玩法或一部分玩法，仅供游玩体验，"
tellraw @a "  不作商业目的且不具有任何官方性质。"
tellraw @a ""
tellraw @a "  若使用的地图资源包含有音效，其知识产权归原作者所有。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]