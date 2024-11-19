 
execute if entity @s[tag=meltdown_bow_in_offhand] run item replace entity @s weapon.offhand with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_0,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.0 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_1,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.1 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_2,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.2 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_3,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.3 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_4,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.4 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_5,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.5 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_6,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.6 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_7,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.7 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}
execute if entity @s[tag=meltdown_bow_in_slot_8,nbt=!{Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.8 with bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}

tag @s remove meltdown_bow_in_offhand
tag @s remove meltdown_bow_in_slot_0
tag @s remove meltdown_bow_in_slot_1
tag @s remove meltdown_bow_in_slot_2
tag @s remove meltdown_bow_in_slot_3
tag @s remove meltdown_bow_in_slot_4
tag @s remove meltdown_bow_in_slot_5
tag @s remove meltdown_bow_in_slot_6
tag @s remove meltdown_bow_in_slot_7
tag @s remove meltdown_bow_in_slot_8

# 疑似不是立刻更新的？？
execute if entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run return 1
give @s bow{Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b}