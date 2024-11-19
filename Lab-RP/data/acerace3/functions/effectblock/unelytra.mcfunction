
execute as @a[team=!spec,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] if predicate acerace3:onground1 run scoreboard players set @s ar_actionbarcd 30
execute as @a[team=!spec,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] if predicate acerace3:onground1 run title @s actionbar ["",{"text": "-","color": "red"}," 䅄",{"text": " 鞘翅","color": "red"}]
execute as @a[team=!spec,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] if predicate acerace3:onground1 run item replace entity @s armor.chest with air

execute if score gameflag ar_game matches 1 run schedule function acerace3:effectblock/unelytra 1t