
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ",{"text": "在 Hole In The Wall，你的目标是成为","bold": true}]
tellraw @a ["  ",{"text": "最后一名生存的玩家。","bold": true}]
tellraw @a " "
tellraw @a "  在整局游戏中，你的四个方向均会生成"
tellraw @a "  黏液块形成的墙并推向你所在的平台。"
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10