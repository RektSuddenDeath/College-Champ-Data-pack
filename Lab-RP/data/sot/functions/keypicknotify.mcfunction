
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:blue_concrete"}]}] if score @s SotBluePickup matches 0 run title @s title ""
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:red_concrete"}]}] if score @s SotRedPickup matches 0 run title @s title ""
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:green_concrete"}]}] if score @s SotGreenPickup matches 0 run title @s title ""
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:yellow_concrete"}]}] if score @s SotYellowPickup matches 0 run title @s title ""

# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:blue_concrete"}]}] if score @s SotBluePickup matches 0 run title @s subtitle "+1 §9蓝色钥匙"
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:red_concrete"}]}] if score @s SotRedPickup matches 0 run title @s subtitle "+1 §c红色钥匙"
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:green_concrete"}]}] if score @s SotGreenPickup matches 0 run title @s subtitle "+1 §2绿色钥匙"
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:yellow_concrete"}]}] if score @s SotYellowPickup matches 0 run title @s subtitle "+1 §e黄色钥匙"

# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:blue_concrete"}]}] if score @s SotBluePickup matches 0 run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"},"§6拾取了§9蓝色钥匙"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:red_concrete"}]}] if score @s SotRedPickup matches 0 run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"},"§6拾取了§c红色钥匙"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:green_concrete"}]}] if score @s SotGreenPickup matches 0 run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"},"§6拾取了§2绿色钥匙"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:yellow_concrete"}]}] if score @s SotYellowPickup matches 0 run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"},"§6拾取了§e黄色钥匙"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:blue_concrete"}]}] if score @s SotBluePickup matches 0 run tellraw @a[tag=admin,tag=!_transcript] ["",{"selector":"@s"},"§6拾取了§9蓝色钥匙"]
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:red_concrete"}]}] if score @s SotRedPickup matches 0 run tellraw @a[tag=admin,tag=!_transcript] ["",{"selector":"@s"},"§6拾取了§c红色钥匙"]
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:green_concrete"}]}] if score @s SotGreenPickup matches 0 run tellraw @a[tag=admin,tag=!_transcript] ["",{"selector":"@s"},"§6拾取了§2绿色钥匙"]
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:yellow_concrete"}]}] if score @s SotYellowPickup matches 0 run tellraw @a[tag=admin,tag=!_transcript] ["",{"selector":"@s"},"§6拾取了§e黄色钥匙"]

# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:blue_concrete"}]}] run scoreboard players set @s SotBluePickup 1
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:red_concrete"}]}] run scoreboard players set @s SotRedPickup 1
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:green_concrete"}]}] run scoreboard players set @s SotGreenPickup 1
# execute as @a[team=!spec,nbt={Inventory:[{id:"minecraft:yellow_concrete"}]}] run scoreboard players set @s SotYellowPickup 1

# execute if score gameflag SotGame matches 1 run schedule function sot:keypicknotify 1t 