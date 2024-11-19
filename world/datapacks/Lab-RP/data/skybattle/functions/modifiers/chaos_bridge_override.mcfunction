
schedule clear skybattle:concrete


execute as @a[nbt={SelectedItem:{id:"minecraft:suspicious_sand"}}] run item replace entity @s weapon.mainhand with suspicious_sand 64
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:suspicious_sand"}]}] run item replace entity @s weapon.offhand with suspicious_sand 64
execute as @a[nbt=!{Inventory:[{id:"minecraft:suspicious_sand"}]}] run give @s suspicious_sand 64

execute if score gameflag sba_game matches 1 run schedule function skybattle:modifiers/chaos_bridge_override 5t