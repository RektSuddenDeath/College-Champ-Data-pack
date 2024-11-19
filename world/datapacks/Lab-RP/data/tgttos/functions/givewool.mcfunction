

execute as @a[team=red,nbt={SelectedItem:{id:"minecraft:red_wool"}}] run item replace entity @s weapon.mainhand with red_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64
execute as @a[team=red,nbt={Inventory:[{Slot:-106b,id:"minecraft:red_wool"}]}] run item replace entity @s weapon.offhand with red_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64

execute as @a[team=blue,nbt={SelectedItem:{id:"minecraft:blue_wool"}}] run item replace entity @s weapon.mainhand with blue_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64
execute as @a[team=blue,nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_wool"}]}] run item replace entity @s weapon.offhand with blue_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64

execute as @a[team=green,nbt={SelectedItem:{id:"minecraft:green_wool"}}] run item replace entity @s weapon.mainhand with green_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64
execute as @a[team=green,nbt={Inventory:[{Slot:-106b,id:"minecraft:green_wool"}]}] run item replace entity @s weapon.offhand with green_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64

execute as @a[team=yellow,nbt={SelectedItem:{id:"minecraft:yellow_wool"}}] run item replace entity @s weapon.mainhand with yellow_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64
execute as @a[team=yellow,nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_wool"}]}] run item replace entity @s weapon.offhand with yellow_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64

execute as @a[team=purple,nbt={SelectedItem:{id:"minecraft:purple_wool"}}] run item replace entity @s weapon.mainhand with purple_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64
execute as @a[team=purple,nbt={Inventory:[{Slot:-106b,id:"minecraft:purple_wool"}]}] run item replace entity @s weapon.offhand with purple_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64

execute as @a[team=cyan,nbt={SelectedItem:{id:"minecraft:cyan_wool"}}] run item replace entity @s weapon.mainhand with cyan_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64
execute as @a[team=cyan,nbt={Inventory:[{Slot:-106b,id:"minecraft:cyan_wool"}]}] run item replace entity @s weapon.offhand with cyan_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64

execute as @a[team=orange,nbt={SelectedItem:{id:"minecraft:orange_wool"}}] run item replace entity @s weapon.mainhand with orange_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64
execute as @a[team=orange,nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_wool"}]}] run item replace entity @s weapon.offhand with orange_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64

execute as @a[team=pink,nbt={SelectedItem:{id:"minecraft:pink_wool"}}] run item replace entity @s weapon.mainhand with pink_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64
execute as @a[team=pink,nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_wool"}]}] run item replace entity @s weapon.offhand with pink_wool{HideFlags:25,CanPlaceOn:["#minecraft:all_breakable_blocks"]} 64

execute if score gameflag tgttos_game matches 1 run schedule function tgttos:givewool 8t