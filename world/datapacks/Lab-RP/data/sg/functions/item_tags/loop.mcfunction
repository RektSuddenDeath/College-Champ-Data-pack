
execute as @a[scores={sg_crafted_diamond_axe=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run item modify entity @s weapon.mainhand sg:weapon_destroys
execute as @a[scores={sg_crafted_diamond_axe=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run scoreboard players set @s sg_crafted_diamond_axe 0

execute as @a[scores={sg_crafted_diamond_sword=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run item modify entity @s weapon.mainhand sg:weapon_destroys
execute as @a[scores={sg_crafted_diamond_sword=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run scoreboard players set @s sg_crafted_diamond_sword 0

execute as @a[scores={sg_crafted_iron_axe=1..},nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run item modify entity @s weapon.mainhand sg:weapon_destroys
execute as @a[scores={sg_crafted_iron_axe=1..},nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run scoreboard players set @s sg_crafted_iron_axe 0

execute as @a[scores={sg_crafted_iron_sword=1..},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run item modify entity @s weapon.mainhand sg:weapon_destroys
execute as @a[scores={sg_crafted_iron_sword=1..},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run scoreboard players set @s sg_crafted_iron_sword 0

execute if score gameflag sg_game matches 1 run schedule function sg:item_tags/loop 1t