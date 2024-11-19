
$execute if entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Count:1b,Slot:-106b}]}] run item replace entity @s weapon.offhand with filled_map{map:$(map_id)}
execute if entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Count:1b,Slot:-106b}]}] run return 1
$execute if entity @s[tag=meltdown_map_in_offhand] run item replace entity @s weapon.offhand with filled_map{map:$(map_id)}
execute if entity @s[tag=meltdown_map_in_offhand] run return 1
execute unless entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Count:1b,Slot:-106b}]}] run clear @s filled_map
$execute unless entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Count:1b,Slot:-106b}]}] run give @s filled_map{map:$(map_id)}