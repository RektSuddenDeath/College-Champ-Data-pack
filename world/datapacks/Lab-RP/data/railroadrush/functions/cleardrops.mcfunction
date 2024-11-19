
kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:andesite"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gravel"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_leaves"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:flint"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:emerald"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"}}]
kill @e[type=snowball]
execute if score gameflag rrr_game matches 1 run schedule function railroadrush:cleardrops 1t