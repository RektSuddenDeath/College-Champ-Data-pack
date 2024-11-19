
give @s iron_pickaxe
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] run tellraw @s "1"
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] run tellraw @s "2"