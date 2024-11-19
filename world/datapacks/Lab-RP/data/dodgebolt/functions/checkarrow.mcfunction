
tag @s add arrownotice
tellraw @a[tag=arrownotice] [{"text": "——————————————————————————————————","color":"green"}]
tellraw @a[tag=arrownotice] ["",{"text": "  Arrow Checking Debug","bold": true}]
tellraw @a[tag=arrownotice] ""
execute as @a[nbt={Inventory:[{id:"minecraft:arrow",Count:1b}]}] run tellraw @a[tag=arrownotice] ["",{"selector":"@s"},{"text":" has ","color":"yellow"},{"text": "1","color":"red"},{"text": " arrow.","color":"yellow"}]
execute as @a[nbt={Inventory:[{id:"minecraft:arrow",Count:2b}]}] run tellraw @a[tag=arrownotice] ["",{"selector":"@s"},{"text":" has ","color":"yellow"},{"text": "2","color":"red"},{"text": " arrows.","color":"yellow"}]
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run tellraw @a[tag=arrownotice] ["",{"text": "There is","color":"yellow"},{"text": " 1 ","color":"red"},{"text": "arrow on the ground.","color":"yellow"}]
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",Count:2b}}] run tellraw @a[tag=arrownotice] ["",{"text": "There are","color":"yellow"},{"text": " 2 ","color":"red"},{"text": "arrows on the ground.","color":"yellow"}]
execute as @e[type=arrow] run tellraw @a[tag=arrownotice] ["",{"text": "There is","color":"yellow"},{"text": " 1 ","color":"red"},{"text": "arrow fired.","color":"yellow"}]
tellraw @a[tag=arrownotice] ["",{"text": "There are supposed to be","color":"yellow"},{"text":" 2 ","color":"red"},{"text": "arrows.","color":"yellow"}]
tellraw @a[tag=arrownotice] [{"text": "——————————————————————————————————","color":"green"}]
tag @s remove arrownotice