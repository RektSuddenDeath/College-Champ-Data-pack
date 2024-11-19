
clear @a arrow
kill @e[type=arrow]
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]

tellraw @s ["[§6DEBUG§r]"," Cleared all possible arrows on the arena."]