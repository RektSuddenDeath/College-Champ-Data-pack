execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10


tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a ""
tellraw @a ["  ",{"text": "随着时间的流逝，"},{"text": "新的平台","color":"aqua"},{"text": "将会生成。"}]
tellraw @a ["  ",{"text": "新平台生成时，将会有箭头与声音提示。","color":"yellow"}]
tellraw @a ""
tellraw @a "  并且，新的平台生成后，旧的平台将会§c快速消解§r。"
tellraw @a "  你需要尽快转移到新的平台上。"
tellraw @a ""
tellraw @a ""
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]