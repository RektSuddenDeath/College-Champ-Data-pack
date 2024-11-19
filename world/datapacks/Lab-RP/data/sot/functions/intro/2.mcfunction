
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["",{"text":"  在 Sands of Time 中，你与你的队友将深入危险的地牢","bold": true}]
tellraw @a ["",{"text":"  并在其中收集","bold": true},{"text":"金子","bold": true,"color": "gold"},{"text": "与","bold": true},{"text": "沙子","bold": true,"color": "yellow"}]
tellraw @a " "
tellraw @a "  金会在拾取时自动转化为积分: "
tellraw @a [{"text": "  金粒: ","color":"white"},{"text":"1","color":"gold"},{"text": "  金锭: ","color":"white"},{"text":"15","color":"gold"}]
tellraw @a [{"text": "  金块: ","color":"white"},{"text":"45","color":"gold"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

