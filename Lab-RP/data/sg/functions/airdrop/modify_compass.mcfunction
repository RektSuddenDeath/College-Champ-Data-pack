
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}}] run item modify entity @s weapon.mainhand sg:compass_dimension
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}}] run item modify entity @s weapon.mainhand sg:compass_coords

execute if score gameflag sg_game matches 1 run schedule function sg:airdrop/modify_compass 1s