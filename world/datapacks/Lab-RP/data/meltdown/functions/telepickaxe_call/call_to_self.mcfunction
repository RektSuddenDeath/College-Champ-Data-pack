

tag @s add meltdown_has_telepickaxe
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:0b}]}] run item replace entity @s hotbar.0 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run item replace entity @s hotbar.1 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b}]}] run item replace entity @s hotbar.2 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run item replace entity @s hotbar.3 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run item replace entity @s hotbar.4 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b}]}] run item replace entity @s hotbar.5 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run item replace entity @s hotbar.6 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:7b}]}] run item replace entity @s hotbar.7 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run item replace entity @s hotbar.8 with iron_pickaxe{CustomModelData:9999,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}

execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] run return 1
clear @s carrot_on_a_stick
give @s iron_pickaxe{CustomModelData:9000,display:{Name:'"§fTelepickaxe"'},CanDestroy:[purpur_pillar],HideFlags:24,Unbreakable:1b}
