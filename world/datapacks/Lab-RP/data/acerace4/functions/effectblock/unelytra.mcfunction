
# On Ground
execute as @a[team=!spec,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] if predicate acerace4:onground1 run scoreboard players set @s ar_actionbarcd 30
execute as @a[team=!spec,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] if predicate acerace4:onground1 run title @s actionbar ["",{"text": "-","color": "red"}," 䅄",{"text": " 鞘翅","color": "red"}]
execute as @a[team=!spec,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] if predicate acerace4:onground1 run item replace entity @s armor.chest with air

# Submerged
execute as @a[team=!spec,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] at @s if block ~ ~ ~ water run scoreboard players set @s ar_actionbarcd 30
execute as @a[team=!spec,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] at @s if block ~ ~ ~ water run title @s actionbar ["",{"text": "-","color": "red"}," 䅄",{"text": " 鞘翅","color": "red"}]
execute as @a[team=!spec,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] at @s if block ~ ~ ~ water run item replace entity @s armor.chest with air

execute if score gameflag ar_game matches 1 run schedule function acerace4:effectblock/unelytra 1t