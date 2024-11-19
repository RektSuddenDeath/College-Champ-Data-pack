
execute as @a[team=red,nbt={SelectedItem:{id:"minecraft:red_concrete"}}] run item replace entity @s weapon.mainhand with red_concrete 64
execute as @a[team=red,nbt={Inventory:[{Slot:-106b,id:"minecraft:red_concrete"}]}] run item replace entity @s weapon.offhand with red_concrete 64
execute as @a[team=red,nbt=!{Inventory:[{id:"minecraft:red_concrete"}]}] run give @s red_concrete 64

execute as @a[team=blue,nbt={SelectedItem:{id:"minecraft:blue_concrete"}}] run item replace entity @s weapon.mainhand with blue_concrete 64
execute as @a[team=blue,nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_concrete"}]}] run item replace entity @s weapon.offhand with blue_concrete 64
execute as @a[team=blue,nbt=!{Inventory:[{id:"minecraft:blue_concrete"}]}] run give @s blue_concrete 64

execute as @a[team=green,nbt={SelectedItem:{id:"minecraft:green_concrete"}}] run item replace entity @s weapon.mainhand with green_concrete 64
execute as @a[team=green,nbt={Inventory:[{Slot:-106b,id:"minecraft:green_concrete"}]}] run item replace entity @s weapon.offhand with green_concrete 64
execute as @a[team=green,nbt=!{Inventory:[{id:"minecraft:green_concrete"}]}] run give @s green_concrete 64

execute as @a[team=yellow,nbt={SelectedItem:{id:"minecraft:yellow_concrete"}}] run item replace entity @s weapon.mainhand with yellow_concrete 64
execute as @a[team=yellow,nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_concrete"}]}] run item replace entity @s weapon.offhand with yellow_concrete 64
execute as @a[team=yellow,nbt=!{Inventory:[{id:"minecraft:yellow_concrete"}]}] run give @s yellow_concrete 64

execute as @a[team=pink,nbt={SelectedItem:{id:"minecraft:pink_concrete"}}] run item replace entity @s weapon.mainhand with pink_concrete 64
execute as @a[team=pink,nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_concrete"}]}] run item replace entity @s weapon.offhand with pink_concrete 64
execute as @a[team=pink,nbt=!{Inventory:[{id:"minecraft:pink_concrete"}]}] run give @s pink_concrete 64

execute as @a[team=cyan,nbt={SelectedItem:{id:"minecraft:cyan_concrete"}}] run item replace entity @s weapon.mainhand with cyan_concrete 64
execute as @a[team=cyan,nbt={Inventory:[{Slot:-106b,id:"minecraft:cyan_concrete"}]}] run item replace entity @s weapon.offhand with cyan_concrete 64
execute as @a[team=cyan,nbt=!{Inventory:[{id:"minecraft:cyan_concrete"}]}] run give @s cyan_concrete 64

execute as @a[team=orange,nbt={SelectedItem:{id:"minecraft:orange_concrete"}}] run item replace entity @s weapon.mainhand with orange_concrete 64
execute as @a[team=orange,nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_concrete"}]}] run item replace entity @s weapon.offhand with orange_concrete 64
execute as @a[team=orange,nbt=!{Inventory:[{id:"minecraft:orange_concrete"}]}] run give @s orange_concrete 64

execute as @a[team=purple,nbt={SelectedItem:{id:"minecraft:purple_concrete"}}] run item replace entity @s weapon.mainhand with purple_concrete 64
execute as @a[team=purple,nbt={Inventory:[{Slot:-106b,id:"minecraft:purple_concrete"}]}] run item replace entity @s weapon.offhand with purple_concrete 64
execute as @a[team=purple,nbt=!{Inventory:[{id:"minecraft:purple_concrete"}]}] run give @s purple_concrete 64

execute if score gameflag sba_game matches 1 run schedule function skybattle:concrete 5t