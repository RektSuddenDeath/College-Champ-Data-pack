
tag @s remove meltdown_has_telepickaxe
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:0b}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:1b}]}] run item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:2b}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:3b}]}] run item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:4b}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:5b}]}] run item replace entity @s hotbar.5 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:6b}]}] run item replace entity @s hotbar.6 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:7b}]}] run item replace entity @s hotbar.7 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:8b}]}] run item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§7Telepickaxe"'}}

execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run return 1
execute if entity @s[tag=meltdown_frozen] run return 1
clear @s iron_pickaxe
give @s carrot_on_a_stick{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}