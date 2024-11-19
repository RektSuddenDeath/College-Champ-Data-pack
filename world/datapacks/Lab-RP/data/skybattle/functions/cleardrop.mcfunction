
# These items are presistent by default.
tag @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:wooden_sword"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:gold_block"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:iron_block"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:potion"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:lingering_potion"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:cobweb"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:stick"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:string"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:fishing_rod"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:iron_leggings"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:iron_boots"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:iron_helmet"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_leggings"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_boots"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_helmet"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:golden_leggings"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:golden_boots"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:golden_helmet"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:golden_chestplate"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:bow"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:tnt"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:creeper_spawn_egg"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:lava_bucket"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:apple"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:scaffolding"}}] add persistent
tag @e[type=item,nbt={Item:{id:"minecraft:hay_block"}}] add persistent

# Removes all inpersistent items
kill @e[type=item,tag=!persistent]

clear @a water_bucket
execute if score gameflag sba_game matches 1 run schedule function skybattle:cleardrop 1t